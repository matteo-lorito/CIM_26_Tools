/**
 * preprocess_v3.js — Audio Corpus Feature Preprocessor for Max
 * Runs in the [js] object (V8 engine, Max 8.6+).
 *
 * Changes in v3:
 *   - Sample-key sorting now uses a robust natural-order comparator
 *     (natural_compare) instead of the fragile "split on underscore"
 *     logic, which silently failed for keys without an underscore,
 *     with multiple underscores, or with the number in a different
 *     position. See _process_raw().
 *   - Removed the empty "Auto-applied" section header in preview()
 *     that printed a heading with nothing under it.
 *
 * Pipeline steps (in order when enabled):
 *   1. Missing value imputation
 *   2. Correlation-based feature selection
 *   3. Log transform (signed log1p)
 *   4. Winsorization (percentile clipping)
 *
 * After this script, load the output into fluid.dataset~ and use:
 *   - fluid.standardize~ or fluid.robustscale~ for normalization
 *   - fluid.umap~ for dimensionality augmentation
 *   - fluid.kdtree~ for nearest-neighbor queries
 *
 * Each step has three modes: "off", "auto", "manual"
 *   off    — step is skipped entirely
 *   auto   — step runs using internal heuristics, reports what it did
 *   manual — step analyzes and suggests, applies only user-specified params
 *
 * Message API:
 *   load <filepath>                      load raw JSON corpus
 *   set_mode <step> <off|auto|manual>    set step mode
 *   set_param <step> <key> <value...>    set step parameter
 *   preview                              run pipeline, output diagnostics, don't write
 *   commit <corpus_path> [params_path]   run pipeline, write files to disk
 *   report <diagnostics_path>            write diagnostics JSON (for jweb)
 *   get_modes                            print current mode of each step
 *   get_params <step>                    print current params of a step
 *   reset                                reset all modes and params to defaults
 *
 * Outlets:
 *   0: status messages (symbol + args)
 *   1: diagnostics dict name (after preview)
 *   2: bang (after commit completes — triggers fluid.dataset~ load)
 */

autowatch = 1;
inlets = 1;
outlets = 3;

setinletassist(0, "messages: load, set_mode, set_param, preview, commit, report");
setoutletassist(0, "status messages");
setoutletassist(1, "diagnostics dict name");
setoutletassist(2, "bang on commit complete");


// ═══════════════════════════════════════════════════════════════
// STATE
// ═══════════════════════════════════════════════════════════════

var state = {
	loaded: false,
	raw: null,                 // 2D array [sample][feature] — never modified after load
	working: null,             // 2D array — result of pipeline
	feature_names: [],         // original names from the corpus
	feature_names_current: [], // names after correlation pruning
	sample_keys: [],           // row identifiers ("sample_0", ...)
	n_samples: 0,
	n_features: 0,            // original feature count

	// Step modes: each is "off", "auto", or "manual"
	modes: {
		impute:    "off",
		correlate: "off",
		log:       "off",
		winsor:    "off"
	},

	// Step parameters: user-configurable
	params: {
		impute: {
			method:       "median", // "median" | "fixed" | "drop"
			fill_values:  null,     // for "fixed": array of fill values per feature
			nan_sentinel: null      // treat this numeric value as missing (e.g. -1 or 0)
		},
		correlate: {
			threshold:      0.85, // |r| above this triggers pruning
			keep_indices:   null, // manual: array of original indices to keep
			prefer_indices: null  // manual: prefer these when choosing between correlated pair
		},
		log: {
			indices:        null, // manual: array of original feature indices to log-transform
			skew_threshold: 2.0   // auto: apply log when |skewness| exceeds this
		},
		winsor: {
			lo_pct:     2,        // lower percentile for clipping
			hi_pct:     98,       // upper percentile for clipping
			boundaries: null      // manual: array of [lo, hi] per current feature
		}
	},

	// Populated by run_pipeline()
	diagnostics: {
		before: null,
		after: null,
		step_reports: {},
		suggestions: {},
		correlation_after: null,
		n_features_current: 0,
		feature_names: []
	},

	// Written to disk by commit()
	transform_params: null,

	// Index mapping (updated by correlation step)
	kept_indices: null,
	raw_to_kept: null,

	// Sample keys surviving the pipeline (shortened by impute "drop" method)
	working_keys: null
};


// ═══════════════════════════════════════════════════════════════
// STATISTICAL UTILITIES
// ═══════════════════════════════════════════════════════════════

/**
 * Arithmetic mean of an array of numbers.
 */
function arr_mean(arr) {
	var sum = 0, n = arr.length;
	for (var i = 0; i < n; i++) sum += arr[i];
	return sum / n;
}

/**
 * Median: middle value of a sorted copy.
 * For even-length arrays, returns the average of the two central values.
 */
function arr_median(arr) {
	var sorted = arr.slice().sort(function(a, b) { return a - b; });
	var n = sorted.length;
	var mid = Math.floor(n / 2);
	return (n % 2 !== 0) ? sorted[mid] : (sorted[mid - 1] + sorted[mid]) / 2;
}

/**
 * Population standard deviation.
 * Optionally pass a precomputed mean to avoid redundant calculation.
 */
function arr_std(arr, precomputed_mean) {
	var mu = (precomputed_mean !== undefined) ? precomputed_mean : arr_mean(arr);
	var sum_sq = 0, n = arr.length;
	for (var i = 0; i < n; i++) {
		var d = arr[i] - mu;
		sum_sq += d * d;
	}
	return Math.sqrt(sum_sq / n);
}

/**
 * Skewness (Fisher's definition): third standardized moment.
 * Positive = right tail heavier. Negative = left tail heavier.
 * Returns 0 for constant arrays.
 */
function arr_skewness(arr, precomputed_mean, precomputed_std) {
	var mu = (precomputed_mean !== undefined) ? precomputed_mean : arr_mean(arr);
	var sd = (precomputed_std !== undefined) ? precomputed_std : arr_std(arr, mu);
	if (sd < 1e-12) return 0;
	var n = arr.length, sum = 0;
	for (var i = 0; i < n; i++) {
		var d = (arr[i] - mu) / sd;
		sum += d * d * d;
	}
	return sum / n;
}

/**
 * Excess kurtosis: fourth standardized moment minus 3.
 * A normal distribution has excess kurtosis = 0.
 * Positive = heavier tails than normal. Negative = lighter tails.
 */
function arr_kurtosis(arr, precomputed_mean, precomputed_std) {
	var mu = (precomputed_mean !== undefined) ? precomputed_mean : arr_mean(arr);
	var sd = (precomputed_std !== undefined) ? precomputed_std : arr_std(arr, mu);
	if (sd < 1e-12) return 0;
	var n = arr.length, sum = 0;
	for (var i = 0; i < n; i++) {
		var d = (arr[i] - mu) / sd;
		sum += d * d * d * d;
	}
	return (sum / n) - 3;
}

/**
 * Linear interpolation percentile.
 * pct is in [0, 100]. Uses the same method as numpy's default interpolation.
 */
function arr_percentile(arr, pct) {
	var sorted = arr.slice().sort(function(a, b) { return a - b; });
	var idx = (pct / 100) * (sorted.length - 1);
	var lo = Math.floor(idx);
	var hi = Math.min(lo + 1, sorted.length - 1);
	var frac = idx - lo;
	return sorted[lo] + (sorted[hi] - sorted[lo]) * frac;
}

/**
 * Count NaN, null, undefined, and optionally a sentinel value in an array.
 */
function count_missing(arr, sentinel) {
	var c = 0;
	for (var i = 0; i < arr.length; i++) {
		if (arr[i] === null || arr[i] === undefined || isNaN(arr[i])) c++;
		else if (sentinel !== null && sentinel !== undefined && arr[i] === sentinel) c++;
	}
	return c;
}

/**
 * Extract a column from a 2D matrix as a 1D array.
 */
function get_column(matrix, col) {
	var n = matrix.length;
	var result = new Array(n);
	for (var i = 0; i < n; i++) result[i] = matrix[i][col];
	return result;
}

/**
 * Deep copy a 2D matrix (array of arrays).
 */
function copy_matrix(m) {
	var result = new Array(m.length);
	for (var i = 0; i < m.length; i++) result[i] = m[i].slice();
	return result;
}

/**
 * Natural-order comparator for sample keys.
 *
 * Splits each key into alternating runs of digits and non-digits, then
 * compares run by run: digit runs are compared numerically, text runs
 * lexicographically. This sorts keys the way a human (or Finder) would:
 *
 *   "sample_2"  <  "sample_10"   (2 < 10, not "10" < "2")
 *   "chunk001"  <  "chunk1000"   (1 < 1000)
 *   "A3_take2"  <  "A3_take10"
 *
 * Works for any naming convention, including plain numeric keys ("0",
 * "1", "2"), keys with no digits at all, and keys with multiple numeric
 * segments. Returns negative if a < b, positive if a > b, 0 if equal.
 */
function natural_compare(a, b) {
	var ra = String(a).match(/(\d+|\D+)/g) || [];
	var rb = String(b).match(/(\d+|\D+)/g) || [];
	var minLen = Math.min(ra.length, rb.length);

	for (var i = 0; i < minLen; i++) {
		var sa = ra[i], sb = rb[i];
		var aIsNum = /^\d+$/.test(sa);
		var bIsNum = /^\d+$/.test(sb);

		if (aIsNum && bIsNum) {
			var diff = parseInt(sa, 10) - parseInt(sb, 10);
			if (diff !== 0) return diff;
		} else if (!aIsNum && !bIsNum) {
			if (sa < sb) return -1;
			if (sa > sb) return 1;
		} else {
			// One numeric, one text: numbers sort before text
			return aIsNum ? -1 : 1;
		}
	}
	// All compared runs equal: shorter key sorts first
	return ra.length - rb.length;
}

/**
 * Compute the Pearson correlation matrix for all feature pairs.
 * Returns a 2D square array where corr[i][j] is the correlation
 * between feature i and feature j.
 */
function correlation_matrix(matrix) {
	var n_samples = matrix.length;
	var n_features = matrix[0].length;

	// Precompute means and standard deviations
	var means = new Array(n_features);
	var stds = new Array(n_features);
	for (var f = 0; f < n_features; f++) {
		var col = get_column(matrix, f);
		means[f] = arr_mean(col);
		stds[f] = arr_std(col, means[f]);
	}

	// Build symmetric correlation matrix
	// First: initialize all rows (so corr[j] exists when we set corr[j][i])
	var corr = [];
	for (var i = 0; i < n_features; i++) {
		corr[i] = new Array(n_features);
		corr[i][i] = 1.0;
	}
	// Then: fill upper triangle and mirror to lower
	for (var i = 0; i < n_features; i++) {
		for (var j = i + 1; j < n_features; j++) {
			var sum = 0;
			for (var s = 0; s < n_samples; s++) {
				sum += (matrix[s][i] - means[i]) * (matrix[s][j] - means[j]);
			}
			var r = (stds[i] > 1e-12 && stds[j] > 1e-12)
				? sum / (n_samples * stds[i] * stds[j])
				: 0;
			corr[i][j] = r;
			corr[j][i] = r;
		}
	}
	return corr;
}

/**
 * Compute per-feature statistics for a matrix.
 * Returns an array of objects, one per feature.
 */
function compute_stats(matrix, names) {
	var n_features = matrix[0].length;
	var result = [];
	for (var f = 0; f < n_features; f++) {
		var col = get_column(matrix, f);
		var mu = arr_mean(col);
		var sd = arr_std(col, mu);
		result.push({
			name:      names[f],
			mean:      mu,
			median:    arr_median(col),
			std:       sd,
			skewness:  arr_skewness(col, mu, sd),
			kurtosis:  arr_kurtosis(col, mu, sd),
			min:       Math.min.apply(null, col),
			max:       Math.max.apply(null, col),
			nan_count: count_missing(col, null)
		});
	}
	return result;
}


// ═══════════════════════════════════════════════════════════════
// PIPELINE STEP 1: MISSING VALUE IMPUTATION
// ═══════════════════════════════════════════════════════════════

function do_impute(matrix, names, params, mode) {
	var n_samples = matrix.length;
	var n_features = matrix[0].length;
	var sentinel = params.nan_sentinel;
	var method = params.method || "median";
	var report = { applied: [], medians: [], counts: [], method: method, dropped_rows: [] };
	var suggestions = [];

	// Helper: is a value missing?
	function is_missing(v) {
		if (v === null || v === undefined || isNaN(v)) return true;
		if (sentinel !== null && sentinel !== undefined && v === sentinel) return true;
		return false;
	}

	// ── Compute per-feature medians and missing counts (needed for all methods) ──
	for (var f = 0; f < n_features; f++) {
		var col = get_column(matrix, f);
		var valid_values = [];
		var miss_count = 0;
		for (var i = 0; i < n_samples; i++) {
			if (is_missing(col[i])) miss_count++;
			else valid_values.push(col[i]);
		}
		var med = (valid_values.length > 0) ? arr_median(valid_values) : 0;
		report.medians.push(med);
		report.counts.push(miss_count);

		if (miss_count > 0) {
			suggestions.push({
				feature:        f,
				name:           names[f],
				missing_count:  miss_count,
				missing_pct:    parseFloat((miss_count / n_samples * 100).toFixed(1)),
				suggested_fill: med
			});
		}
	}

	// In manual mode, only proceed if the user has configured the step.
	// (For "drop" and "median" there is nothing to configure, so they run.
	//  For "fixed" we need fill_values; if absent, treat as suggestions-only.)
	if (mode === "manual" && method === "fixed" &&
		(!params.fill_values || params.fill_values.length === 0)) {
		// suggestions only — return unchanged
		return { matrix: copy_matrix(matrix), report: report,
		         suggestions: suggestions, surviving_rows: null };
	}
	if (mode === "off") {
		return { matrix: copy_matrix(matrix), report: report,
		         suggestions: suggestions, surviving_rows: null };
	}

	// ══════════════════════════════════════════════════════════
	// METHOD: DROP — remove any sample that has a missing value
	// ══════════════════════════════════════════════════════════
	if (method === "drop") {
		var surviving_rows = [];   // original row indices that survive
		var dropped_rows = [];     // original row indices removed
		for (var s = 0; s < n_samples; s++) {
			var has_missing = false;
			for (var ff = 0; ff < n_features; ff++) {
				if (is_missing(matrix[s][ff])) { has_missing = true; break; }
			}
			if (has_missing) dropped_rows.push(s);
			else surviving_rows.push(s);
		}

		// Build the reduced matrix from surviving rows only
		var new_matrix = new Array(surviving_rows.length);
		for (var r = 0; r < surviving_rows.length; r++) {
			new_matrix[r] = matrix[surviving_rows[r]].slice();
		}

		report.dropped_rows = dropped_rows;
		report.applied.push({
			feature: -1, name: "(rows)",
			count: dropped_rows.length,
			fill_value: NaN  // not applicable; kept for report shape consistency
		});

		return { matrix: new_matrix, report: report,
		         suggestions: suggestions, surviving_rows: surviving_rows };
	}

	// ══════════════════════════════════════════════════════════
	// METHOD: MEDIAN or FIXED — fill in place
	// ══════════════════════════════════════════════════════════
	var result = copy_matrix(matrix);
	for (var f2 = 0; f2 < n_features; f2++) {
		if (report.counts[f2] === 0) continue;  // nothing to fill in this feature

		// Choose fill value for this feature
		var fill;
		if (method === "fixed" && params.fill_values && params.fill_values[f2] !== undefined) {
			fill = params.fill_values[f2];
		} else {
			fill = report.medians[f2];  // default to median
		}

		var filled = 0;
		for (var s2 = 0; s2 < n_samples; s2++) {
			if (is_missing(result[s2][f2])) {
				result[s2][f2] = fill;
				filled++;
			}
		}
		if (filled > 0) {
			report.applied.push({
				feature: f2, name: names[f2],
				count: filled, fill_value: fill
			});
		}
	}

	return { matrix: result, report: report,
	         suggestions: suggestions, surviving_rows: null };
}


// ═══════════════════════════════════════════════════════════════
// PIPELINE STEP 2: CORRELATION-BASED FEATURE SELECTION
// ═══════════════════════════════════════════════════════════════

function do_correlate(matrix, names, kept_indices, params, mode) {
	var n_features = matrix[0].length;
	var corr = correlation_matrix(matrix);

	// Find all pairs whose absolute correlation exceeds the threshold
	var pairs = [];
	for (var i = 0; i < n_features; i++) {
		for (var j = i + 1; j < n_features; j++) {
			if (Math.abs(corr[i][j]) > params.threshold) {
				pairs.push({
					i: i, j: j,
					orig_i: kept_indices[i], orig_j: kept_indices[j],
					name_i: names[i], name_j: names[j],
					r: corr[i][j]
				});
			}
		}
	}

	// Build suggestions: for each correlated pair, suggest which one to drop
	var suggestions = pairs.map(function(p) {
		var avg_i = 0, avg_j = 0;
		for (var k = 0; k < n_features; k++) {
			if (k !== p.i) avg_i += Math.abs(corr[p.i][k]);
			if (k !== p.j) avg_j += Math.abs(corr[p.j][k]);
		}
		avg_i /= (n_features - 1);
		avg_j /= (n_features - 1);

		// Suggest dropping the one with higher average correlation to everything else
		var suggest_drop = (avg_i >= avg_j) ? p.name_i : p.name_j;
		return {
			feature_a:    p.name_i,
			feature_b:    p.name_j,
			correlation:  parseFloat(p.r.toFixed(4)),
			avg_corr_a:   parseFloat(avg_i.toFixed(4)),
			avg_corr_b:   parseFloat(avg_j.toFixed(4)),
			suggest_drop: suggest_drop
		};
	});

	// Determine which features to drop
	var drop_set = {};

	if (mode === "auto") {
		// Greedy iterative: for each pair still fully present, drop the more redundant one
		var changed = true;
		while (changed) {
			changed = false;
			for (var pi = 0; pi < pairs.length; pi++) {
				var p = pairs[pi];
				if (drop_set[p.i] || drop_set[p.j]) continue;

				// Recompute average correlation only among remaining features
				var avg_i = 0, avg_j = 0, count_i = 0, count_j = 0;
				for (var k = 0; k < n_features; k++) {
					if (drop_set[k]) continue;
					if (k !== p.i) { avg_i += Math.abs(corr[p.i][k]); count_i++; }
					if (k !== p.j) { avg_j += Math.abs(corr[p.j][k]); count_j++; }
				}
				avg_i = count_i > 0 ? avg_i / count_i : 0;
				avg_j = count_j > 0 ? avg_j / count_j : 0;

				var to_drop = (avg_i >= avg_j) ? p.i : p.j;

				// Respect user preference if specified
				if (params.prefer_indices) {
					var pref_i = params.prefer_indices.indexOf(kept_indices[p.i]) >= 0;
					var pref_j = params.prefer_indices.indexOf(kept_indices[p.j]) >= 0;
					if (pref_i && !pref_j) to_drop = p.j;
					else if (pref_j && !pref_i) to_drop = p.i;
				}

				drop_set[to_drop] = true;
				changed = true;
			}
		}
	} else if (mode === "manual" && params.keep_indices) {
		// Manual: user explicitly lists which original indices to keep
		for (var fi = 0; fi < n_features; fi++) {
			if (params.keep_indices.indexOf(kept_indices[fi]) < 0) {
				drop_set[fi] = true;
			}
		}
	}
	// If manual mode but no keep_indices set: no features are dropped (suggestions only)

	// Build output matrix without dropped features
	var new_kept = [];
	var new_names = [];
	var dropped_info = [];

	for (var fi2 = 0; fi2 < n_features; fi2++) {
		if (!drop_set[fi2]) {
			new_kept.push(kept_indices[fi2]);
			new_names.push(names[fi2]);
		} else {
			dropped_info.push({
				original_index: kept_indices[fi2],
				name: names[fi2]
			});
		}
	}

	var new_matrix = new Array(matrix.length);
	for (var s = 0; s < matrix.length; s++) {
		new_matrix[s] = [];
		for (var col = 0; col < n_features; col++) {
			if (!drop_set[col]) new_matrix[s].push(matrix[s][col]);
		}
	}

	var report = {
		correlation_matrix: corr,
		threshold: params.threshold,
		pairs_found: pairs.length,
		dropped: dropped_info,
		n_before: n_features,
		n_after: new_names.length
	};

	return {
		matrix: new_matrix,
		names: new_names,
		kept_indices: new_kept,
		report: report,
		suggestions: suggestions
	};
}


// ═══════════════════════════════════════════════════════════════
// PIPELINE STEP 3: LOG TRANSFORM
// ═══════════════════════════════════════════════════════════════

function do_log(matrix, names, kept_indices, params, mode) {
	var n_features = matrix[0].length;
	var result = copy_matrix(matrix);

	// Build raw-to-kept index mapping
	var r2k = {};
	for (var k = 0; k < kept_indices.length; k++) {
		r2k[kept_indices[k]] = k;
	}

	// Analyze skewness for all current features
	var skew_info = [];
	for (var f = 0; f < n_features; f++) {
		var col = get_column(matrix, f);
		var sk = arr_skewness(col);
		skew_info.push({
			current_index:   f,
			original_index:  kept_indices[f],
			name:            names[f],
			skewness:        parseFloat(sk.toFixed(4)),
			above_threshold: Math.abs(sk) > params.skew_threshold
		});
	}

	// Build suggestions
	var suggestions = skew_info
		.filter(function(s) { return s.above_threshold; })
		.map(function(s) {
			return {
				feature:        s.name,
				original_index: s.original_index,
				skewness:       s.skewness,
				suggestion:     "apply log1p (|skew| = " +
					Math.abs(s.skewness).toFixed(2) + " > " + params.skew_threshold + ")"
			};
		});

	// Determine which features to transform
	var log_current_indices = [];

	if (mode === "auto") {
		for (var ai = 0; ai < skew_info.length; ai++) {
			if (skew_info[ai].above_threshold) log_current_indices.push(ai);
		}
	} else if (mode === "manual" && params.indices) {
		// User specifies original indices; map them to current column positions
		for (var mi = 0; mi < params.indices.length; mi++) {
			var orig = params.indices[mi];
			if (r2k[orig] !== undefined) log_current_indices.push(r2k[orig]);
		}
	}

	// Apply signed log1p: y = sign(x) * log(1 + |x|)
	var applied = [];
	for (var li = 0; li < log_current_indices.length; li++) {
		var ci = log_current_indices[li];
		var col_before = get_column(result, ci);
		var skew_before = arr_skewness(col_before);
		var kurt_before = arr_kurtosis(col_before);

		for (var s = 0; s < result.length; s++) {
			var v = result[s][ci];
			result[s][ci] = Math.sign(v) * Math.log(1 + Math.abs(v));
		}

		var col_after = get_column(result, ci);
		var skew_after = arr_skewness(col_after);
		var kurt_after = arr_kurtosis(col_after);

		applied.push({
			current_index:  ci,
			original_index: kept_indices[ci],
			name:           names[ci],
			skew_before:    parseFloat(skew_before.toFixed(4)),
			skew_after:     parseFloat(skew_after.toFixed(4)),
			kurt_before:    parseFloat(kurt_before.toFixed(4)),
			kurt_after:     parseFloat(kurt_after.toFixed(4))
		});
	}

	// Record which original indices were logged (needed for runtime transform)
	var logged_original = log_current_indices.map(function(ci) {
		return kept_indices[ci];
	});

	var report = {
		skewness_analysis: skew_info,
		applied: applied,
		logged_original_indices: logged_original
	};

	return { matrix: result, report: report, suggestions: suggestions };
}


// ═══════════════════════════════════════════════════════════════
// PIPELINE STEP 4: WINSORIZATION
// ═══════════════════════════════════════════════════════════════

function do_winsor(matrix, names, params, mode) {
	var n_features = matrix[0].length;
	var result = copy_matrix(matrix);
	var boundaries = [];
	var applied = [];
	var suggestions = [];

	for (var f = 0; f < n_features; f++) {
		var col = get_column(matrix, f);
		var lo, hi;

		// Use manual boundaries if provided, otherwise compute from percentiles
		if (mode === "manual" && params.boundaries && params.boundaries[f]) {
			lo = params.boundaries[f][0];
			hi = params.boundaries[f][1];
		} else {
			lo = arr_percentile(col, params.lo_pct);
			hi = arr_percentile(col, params.hi_pct);
		}

		boundaries.push([lo, hi]);

		// Count and clip
		var n_clipped = 0;
		for (var s = 0; s < result.length; s++) {
			if (result[s][f] < lo)      { result[s][f] = lo; n_clipped++; }
			else if (result[s][f] > hi) { result[s][f] = hi; n_clipped++; }
		}

		suggestions.push({
			feature:      names[f],
			suggested_lo: parseFloat(lo.toFixed(6)),
			suggested_hi: parseFloat(hi.toFixed(6)),
			would_clip:   n_clipped
		});

		if (n_clipped > 0) {
			applied.push({
				feature:     f,
				name:        names[f],
				lo:          parseFloat(lo.toFixed(6)),
				hi:          parseFloat(hi.toFixed(6)),
				n_clipped:   n_clipped,
				pct_clipped: parseFloat((n_clipped / matrix.length * 100).toFixed(2))
			});
		}
	}

	var report = {
		boundaries: boundaries,
		applied:    applied,
		lo_pct:     params.lo_pct,
		hi_pct:     params.hi_pct
	};

	return { matrix: result, report: report, suggestions: suggestions };
}


// ═══════════════════════════════════════════════════════════════
// PIPELINE RUNNER
// ═══════════════════════════════════════════════════════════════

function run_pipeline() {
	if (!state.loaded) {
		post("Error: no corpus loaded\n");
		return false;
	}

	// Start from a fresh copy of the raw data
	var matrix = copy_matrix(state.raw);
	var names = state.feature_names.slice();
	var working_keys = state.sample_keys.slice();  // tracks surviving sample IDs
	var kept = [];
	for (var i = 0; i < state.n_features; i++) kept.push(i);

	// Compute baseline statistics before any processing
	state.diagnostics.before = compute_stats(matrix, names);
	state.diagnostics.step_reports = {};
	state.diagnostics.suggestions = {};

	// ── Step 1: Imputation ──
	if (state.modes.impute !== "off") {
		post("  Step 1: Imputation (" + state.modes.impute +
			", method=" + (state.params.impute.method || "median") + ")\n");
		var imp = do_impute(matrix, names, state.params.impute, state.modes.impute);
		matrix = imp.matrix;
		state.diagnostics.step_reports.impute = imp.report;
		state.diagnostics.suggestions.impute = imp.suggestions;

		// If the drop method removed rows, shorten working_keys to match.
		if (imp.surviving_rows !== null) {
			var new_keys = new Array(imp.surviving_rows.length);
			for (var sk = 0; sk < imp.surviving_rows.length; sk++) {
				new_keys[sk] = working_keys[imp.surviving_rows[sk]];
			}
			working_keys = new_keys;
			post("    Dropped " + imp.report.dropped_rows.length +
				" samples with missing values; " + working_keys.length + " remain\n");
		} else {
			for (var ai = 0; ai < imp.report.applied.length; ai++) {
				var a = imp.report.applied[ai];
				if (a.feature < 0) continue;
				post("    [" + a.feature + "] " + a.name + ": " +
					a.count + " values → " + a.fill_value.toFixed(4) + "\n");
			}
			if (imp.report.applied.length === 0 && imp.suggestions.length === 0)
				post("    No missing values detected\n");
		}
	}

	// ── Step 2: Correlation pruning ──
	if (state.modes.correlate !== "off") {
		post("  Step 2: Correlation pruning (" + state.modes.correlate + ")\n");
		var cor = do_correlate(matrix, names, kept, state.params.correlate, state.modes.correlate);
		matrix = cor.matrix;
		names = cor.names;
		kept = cor.kept_indices;
		state.diagnostics.step_reports.correlate = cor.report;
		state.diagnostics.suggestions.correlate = cor.suggestions;
		post("    " + cor.report.n_before + " → " + cor.report.n_after + " features\n");
		for (var di = 0; di < cor.report.dropped.length; di++) {
			post("    Dropped: [" + cor.report.dropped[di].original_index + "] " +
				cor.report.dropped[di].name + "\n");
		}
	}

	// ── Step 3: Log transform ──
	if (state.modes.log !== "off") {
		post("  Step 3: Log transform (" + state.modes.log + ")\n");
		var lg = do_log(matrix, names, kept, state.params.log, state.modes.log);
		matrix = lg.matrix;
		state.diagnostics.step_reports.log = lg.report;
		state.diagnostics.suggestions.log = lg.suggestions;
		for (var li = 0; li < lg.report.applied.length; li++) {
			var l = lg.report.applied[li];
			post("    [" + l.current_index + "] " + l.name +
				"  skew " + l.skew_before.toFixed(2) + " → " + l.skew_after.toFixed(2) +
				"  kurt " + l.kurt_before.toFixed(1) + " → " + l.kurt_after.toFixed(1) + "\n");
		}
		if (lg.report.applied.length === 0) post("    No features transformed\n");
	}

	// ── Step 4: Winsorization ──
	if (state.modes.winsor !== "off") {
		post("  Step 4: Winsorization (" + state.modes.winsor + ")\n");
		var ws = do_winsor(matrix, names, state.params.winsor, state.modes.winsor);
		matrix = ws.matrix;
		state.diagnostics.step_reports.winsor = ws.report;
		state.diagnostics.suggestions.winsor = ws.suggestions;
		for (var wi = 0; wi < ws.report.applied.length; wi++) {
			var w = ws.report.applied[wi];
			post("    [" + w.feature + "] " + w.name +
				"  [" + w.lo + ", " + w.hi + "] clipped " + w.n_clipped +
				" (" + w.pct_clipped + "%)\n");
		}
		if (ws.report.applied.length === 0) post("    No values clipped\n");
	}

	// Store results
	state.working = matrix;
	state.working_keys = working_keys;
	state.kept_indices = kept;
	state.feature_names_current = names;

	// Build raw-to-kept mapping
	var r2k = {};
	for (var ri = 0; ri < kept.length; ri++) r2k[kept[ri]] = ri;
	state.raw_to_kept = r2k;

	// Compute post-pipeline statistics
	state.diagnostics.after = compute_stats(matrix, names);
	state.diagnostics.correlation_after = correlation_matrix(matrix);
	state.diagnostics.n_features_current = names.length;
	state.diagnostics.feature_names = names;

	// Build transform parameters (for runtime use on new sounds)
	state.transform_params = {
		steps_enabled: {
			impute:    state.modes.impute !== "off",
			correlate: state.modes.correlate !== "off",
			log:       state.modes.log !== "off",
			winsor:    state.modes.winsor !== "off"
		},
		modes: {
			impute:    state.modes.impute,
			correlate: state.modes.correlate,
			log:       state.modes.log,
			winsor:    state.modes.winsor
		},
		feature_names_original: state.feature_names,
		feature_names_output:   names,
		kept_indices:           kept,
		n_features_in:          state.n_features,
		n_features_out:         names.length,
		n_samples_in:           state.n_samples,
		n_samples_out:          state.working.length,
		impute_method:   (state.diagnostics.step_reports.impute)
			? state.diagnostics.step_reports.impute.method : "median",
		impute_dropped_ids: (state.diagnostics.step_reports.impute &&
			state.diagnostics.step_reports.impute.dropped_rows)
			? state.diagnostics.step_reports.impute.dropped_rows.map(function(r) {
				return state.sample_keys[r];
			}) : [],
		impute_medians:  (state.diagnostics.step_reports.impute)
			? state.diagnostics.step_reports.impute.medians : [],
		impute_counts:   (state.diagnostics.step_reports.impute)
			? state.diagnostics.step_reports.impute.counts : [],
		log_original_indices: (state.diagnostics.step_reports.log)
			? state.diagnostics.step_reports.log.logged_original_indices : [],
		winsor_boundaries: (state.diagnostics.step_reports.winsor)
			? state.diagnostics.step_reports.winsor.boundaries : []
	};

	return true;
}


// ═══════════════════════════════════════════════════════════════
// FILE I/O
// ═══════════════════════════════════════════════════════════════

function read_json_file(filepath) {
	post("  Loading: " + filepath + "\n");

	var d = new Dict("_preprocess_temp_load");
	d.quiet = true;
	var loaded = false;

	// Attempt 1: try the path as given
	try {
		d.import_json(filepath);
		if (d.getkeys()) loaded = true;
	} catch (e) { /* fall through */ }

	// Attempt 2: try filename only (Max searches its file path)
	if (!loaded) {
		var parts = filepath.replace(/\\/g, "/").split("/");
		var filename = parts[parts.length - 1];
		post("  Full path not resolved by Dict, trying filename: " + filename + "\n");
		try {
			d.import_json(filename);
			if (d.getkeys()) loaded = true;
		} catch (e) { /* fall through */ }
	}

	if (!loaded) {
		post("Error: could not load JSON file.\n");
		post("  Tried: " + filepath + "\n");
		post("  Make sure the file is in the same folder as the patch,\n");
		post("  or that its folder is in Max's File Preferences search path.\n");
		d.freepeer();
		return null;
	}

	// Convert the entire Dict back to a JSON string, then parse it
	var json_str = d.stringify();
	d.freepeer();

	post("  Dict loaded successfully (" + json_str.length + " chars)\n");

	try {
		return JSON.parse(json_str);
	} catch (e) {
		post("Error parsing JSON from Dict: " + e.message + "\n");
		return null;
	}
}

function write_json_file(filepath, obj, pretty) {
	// Use Dict for JSON writing — consistent with our Dict-based reading
	// and guaranteed to work with Max's file path system.
	try {
		var d = new Dict("_preprocess_temp_write");
		// Parse the JS object into the Dict
		var json_str = pretty ? JSON.stringify(obj, null, 2) : JSON.stringify(obj);
		d.parse(json_str);
		d.export_json(filepath);
		d.freepeer();
		return true;
	} catch (e) {
		post("Error writing JSON: " + e.message + "\n");
		post("  Path: " + filepath + "\n");
		return false;
	}
}


// ═══════════════════════════════════════════════════════════════
// DICT INTEGRATION (for v8ui diagnostics panel)
// ═══════════════════════════════════════════════════════════════

/**
 * Push current diagnostics into a named Max Dict
 * so the v8ui object can read and display them.
 * Stores parallel arrays for easy iteration in the drawing code.
 */
function update_diagnostics_dict() {
	var dict_name = "preprocess_diagnostics";
	var d = new Dict(dict_name);
	d.clear();

	d.set("n_samples", state.n_samples);
	d.set("n_features_original", state.n_features);
	d.set("n_features_current", state.diagnostics.n_features_current);
	d.set("feature_names", state.diagnostics.feature_names);

	// Modes
	d.set("mode_impute",    state.modes.impute);
	d.set("mode_correlate", state.modes.correlate);
	d.set("mode_log",       state.modes.log);
	d.set("mode_winsor",    state.modes.winsor);

	// Per-feature before/after statistics as parallel arrays
	var after  = state.diagnostics.after;
	var before = state.diagnostics.before;

	var sk_b = [], sk_a = [], ku_b = [], ku_a = [];
	var mn_b = [], mn_a = [], mx_b = [], mx_a = [];
	var sd_b = [], sd_a = [];
	var names_out = [];

	for (var i = 0; i < after.length; i++) {
		names_out.push(after[i].name);
		sk_a.push(after[i].skewness);
		ku_a.push(after[i].kurtosis);
		mn_a.push(after[i].min);
		mx_a.push(after[i].max);
		sd_a.push(after[i].std);

		// Find the matching "before" entry by feature name
		var matched = false;
		for (var j = 0; j < before.length; j++) {
			if (before[j].name === after[i].name) {
				sk_b.push(before[j].skewness);
				ku_b.push(before[j].kurtosis);
				mn_b.push(before[j].min);
				mx_b.push(before[j].max);
				sd_b.push(before[j].std);
				matched = true;
				break;
			}
		}
		if (!matched) {
			sk_b.push(0); ku_b.push(0); mn_b.push(0); mx_b.push(0); sd_b.push(0);
		}
	}

	d.set("skewness_before", sk_b);
	d.set("skewness_after",  sk_a);
	d.set("kurtosis_before", ku_b);
	d.set("kurtosis_after",  ku_a);
	d.set("min_before", mn_b);
	d.set("min_after",  mn_a);
	d.set("max_before", mx_b);
	d.set("max_after",  mx_a);
	d.set("std_before", sd_b);
	d.set("std_after",  sd_a);

	// Flatten correlation matrix into a 1D array
	// (v8ui reconstructs the 2D grid using correlation_size)
	var corr = state.diagnostics.correlation_after;
	if (corr) {
		var flat = [];
		for (var ci = 0; ci < corr.length; ci++) {
			for (var cj = 0; cj < corr[ci].length; cj++) {
				flat.push(parseFloat(corr[ci][cj].toFixed(4)));
			}
		}
		d.set("correlation_flat", flat);
		d.set("correlation_size", corr.length);
	}

	// Step-specific suggestions (serialized as JSON strings for Dict compatibility)
	var step_names = ["impute", "correlate", "log", "winsor"];
	for (var si = 0; si < step_names.length; si++) {
		var sn = step_names[si];
		var sugs = state.diagnostics.suggestions[sn];
		if (sugs && sugs.length > 0) {
			d.set("suggestions_" + sn, JSON.stringify(sugs));
		}
	}

	outlet(1, "diagnostics", dict_name);
}


// ═══════════════════════════════════════════════════════════════
// MAX MESSAGE HANDLERS
// ═══════════════════════════════════════════════════════════════

/**
 * load <filepath>
 * Load a raw JSON corpus in fluid.dataset~ format:
 * { "cols": N, "data": { "key0": [v0, v1, ...], ... } }
 */
/**
 * _process_raw(raw)
 * Shared helper: takes a parsed JSON object { cols, data, feature_names? }
 * and populates the state. Called by both load() and load_dict().
 */
function _process_raw(raw) {
	if (!raw || !raw.data) {
		post("Error: invalid corpus — missing 'data' key\n");
		outlet(0, "error", "invalid corpus");
		return false;
	}

	// Sort keys in natural order (handles "0","1","2"… as well as
	// "sample_0", "chunk001", "A3_take2_v10", etc.). This replaces the
	// previous logic that assumed the number always sat at index [1]
	// after splitting on "_", which broke silently for other formats.
	var keys = Object.keys(raw.data).sort(natural_compare);

	var n_samples = keys.length;
	if (n_samples === 0) {
		post("Error: corpus has no samples\n");
		outlet(0, "error", "empty corpus");
		return false;
	}

	var n_features = raw.data[keys[0]].length;

	// Build 2D matrix
	var matrix = new Array(n_samples);
	for (var i = 0; i < n_samples; i++) {
		var row = raw.data[keys[i]];
		matrix[i] = [];
		for (var j = 0; j < row.length; j++) matrix[i].push(row[j]);
	}

	// Read or generate feature names
	var names = [];
	if (raw.feature_names && raw.feature_names.length === n_features) {
		names = raw.feature_names.slice();
	} else {
		for (var f = 0; f < n_features; f++) names.push("feature_" + f);
	}

	// Store in state
	state.loaded = true;
	state.raw = matrix;
	state.working = null;
	state.feature_names = names;
	state.sample_keys = keys;
	state.n_samples = n_samples;
	state.n_features = n_features;

	post("  " + n_samples + " samples x " + n_features + " features\n");
	post("  Features: " + names.join(", ") + "\n\n");

	outlet(0, "loaded", n_samples, n_features);
	return true;
}

/**
 * load <filepath>
 * Load corpus from a JSON file via Dict.import_json.
 */
function load() {
	var args = arrayfromargs(arguments);
	if (args.length === 0) {
		post("Usage: load <filepath>  or  load_dict <dict_name>\n");
		return;
	}
	var filepath = args.join(" ");

	post("\n══════════════════════════════════════\n");
	post("  Loading file: " + filepath + "\n");
	post("══════════════════════════════════════\n");

	var raw = read_json_file(filepath);
	_process_raw(raw);
}

/**
 * load_dict <dict_name>
 * Load corpus from a named Max Dict.
 *
 * In Max, first load the JSON into a [dict] object:
 *   [dict raw_dataset @import_json corpus.json]
 * or load via message:
 *   [message: import_json corpus.json] → [dict raw_dataset]
 * Then send:
 *   [message: load_dict raw_dataset] → [js preprocess.js]
 */
function load_dict() {
	var args = arrayfromargs(arguments);
	var dict_name = (args.length > 0) ? args[0] : "raw_dataset";

	post("\n══════════════════════════════════════\n");
	post("  Loading from Dict: " + dict_name + "\n");
	post("══════════════════════════════════════\n");

	var d = new Dict(dict_name);

	// Check the Dict exists and has content
	var keys = d.getkeys();
	if (!keys) {
		post("Error: Dict '" + dict_name + "' is empty or does not exist.\n");
		post("  Make sure a [dict " + dict_name + "] object exists in your patch\n");
		post("  and has been loaded with import_json.\n");
		outlet(0, "error", "dict empty or not found");
		return;
	}

	// Convert Dict to JSON string, then parse to JS object
	var json_str = d.stringify();
	post("  Dict read: " + json_str.length + " chars\n");

	var raw;
	try {
		raw = JSON.parse(json_str);
	} catch (e) {
		post("Error parsing Dict content: " + e.message + "\n");
		outlet(0, "error", "dict parse failed");
		return;
	}

	_process_raw(raw);
}

/**
 * set_mode <step_name> <off|auto|manual>
 */
function set_mode() {
	var args = arrayfromargs(arguments);
	if (args.length < 2) {
		post("Usage: set_mode <impute|correlate|log|winsor> <off|auto|manual>\n");
		return;
	}
	var step = args[0];
	var mode = args[1];

	if (!state.modes.hasOwnProperty(step)) {
		post("Error: unknown step '" + step + "'. Use: impute, correlate, log, winsor\n");
		return;
	}
	if (["off", "auto", "manual"].indexOf(mode) < 0) {
		post("Error: unknown mode '" + mode + "'. Use: off, auto, manual\n");
		return;
	}

	state.modes[step] = mode;
	post("  " + step + " → " + mode + "\n");
	outlet(0, "mode", step, mode);
}

/**
 * set_param <step_name> <key> <value...>
 * Examples:
 *   set_param correlate threshold 0.9
 *   set_param log indices 1 4 7
 *   set_param winsor lo_pct 5
 *   set_param impute nan_sentinel -1
 */
function set_param() {
	var args = arrayfromargs(arguments);
	if (args.length < 3) {
		post("Usage: set_param <step> <key> <value...>\n");
		return;
	}
	var step = args[0];
	var key  = args[1];
	var values = args.slice(2);

	if (!state.params.hasOwnProperty(step)) {
		post("Error: unknown step '" + step + "'\n");
		return;
	}

	// Parse based on expected parameter types
	if (key === "indices" || key === "keep_indices" || key === "prefer_indices") {
		state.params[step][key] = values.map(function(v) { return parseInt(v); });
	} else if (key === "threshold" || key === "skew_threshold" ||
	           key === "lo_pct" || key === "hi_pct" || key === "nan_sentinel") {
		state.params[step][key] = parseFloat(values[0]);
	} else if (key === "fill_values") {
		state.params[step][key] = values.map(function(v) { return parseFloat(v); });
	} else if (key === "method") {
		var m = String(values[0]);
		if (["median", "fixed", "drop"].indexOf(m) < 0) {
			post("Error: impute method must be 'median', 'fixed', or 'drop'\n");
			return;
		}
		state.params[step][key] = m;
	} else {
		post("Warning: unknown parameter '" + key + "' for step '" + step + "'\n");
		state.params[step][key] = (values.length === 1) ? values[0] : values;
	}

	post("  " + step + "." + key + " = " + JSON.stringify(state.params[step][key]) + "\n");
}

/**
 * preview
 * Run the full pipeline with current settings.
 * Compute diagnostics and push them to the Dict for v8ui.
 * Does NOT write any files to disk.
 */

/**
 * emit_feature_mask()
 * Sends a keep/drop mask from outlet 0 as:
 *   feature_mask <m0> <m1> ... <mN-1>
 * where each value is 1 if the original feature at that index survives
 * preprocessing (was kept by the correlation step), or 0 if it was dropped.
 * The array position is the ORIGINAL feature index.
 *
 * Example: 4 features, third one dropped → "feature_mask 1 1 0 1"
 *
 * Requires the pipeline to have run (preview or commit), so that
 * state.kept_indices is populated.
 */
function emit_feature_mask() {
	if (!state.kept_indices) return;

	// kept_indices holds the ORIGINAL indices that survived.
	// Build a lookup for O(1) membership testing.
	var kept_set = {};
	for (var k = 0; k < state.kept_indices.length; k++) {
		kept_set[state.kept_indices[k]] = true;
	}

	// One flag per original feature, in original index order.
	var mask = [];
	for (var f = 0; f < state.n_features; f++) {
		mask.push(kept_set[f] ? 1 : 0);
	}

	// Emits: feature_mask 1 1 0 1 ...
	outlet(0, "feature_mask", mask);
	post("  feature_mask: " + mask.join(" ") + "\n");
}

function preview() {
	post("\n══════════════════════════════════════\n");
	post("  PREVIEW\n");
	post("══════════════════════════════════════\n");

	var ok = run_pipeline();
	if (!ok) return;

	// Print before/after summary table
	post("\n  ── Before vs After ──\n");
	post("  " + pad_str("Feature", 20) + pad_str("sk_bef", 8) +
		pad_str("sk_aft", 8) + pad_str("ku_bef", 8) + pad_str("ku_aft", 8) + "\n");

	var after  = state.diagnostics.after;
	var before = state.diagnostics.before;

	for (var i = 0; i < after.length; i++) {
		var b_sk = "n/a", b_ku = "n/a";
		for (var j = 0; j < before.length; j++) {
			if (before[j].name === after[i].name) {
				b_sk = before[j].skewness.toFixed(2);
				b_ku = before[j].kurtosis.toFixed(2);
				break;
			}
		}
		post("  " + pad_str(after[i].name, 20) +
			pad_str(b_sk, 8) + pad_str(after[i].skewness.toFixed(2), 8) +
			pad_str(b_ku, 8) + pad_str(after[i].kurtosis.toFixed(2), 8) + "\n");
	}

	// Print suggestions for steps in manual mode
	var step_names = ["impute", "correlate", "log", "winsor"];
	var has_sug = false;
	for (var si = 0; si < step_names.length; si++) {
		var sn = step_names[si];
		var sugs = state.diagnostics.suggestions[sn];
		if (state.modes[sn] === "manual" && sugs && sugs.length > 0) {
			if (!has_sug) {
				post("\n  ── Suggestions (manual mode) ──\n");
				has_sug = true;
			}
			post("  [" + sn + "]\n");
			for (var sui = 0; sui < sugs.length; sui++) {
				var s = sugs[sui];
				if (sn === "log") {
					post("    " + s.feature + " (orig " + s.original_index + "): " + s.suggestion + "\n");
				} else if (sn === "correlate") {
					post("    " + s.feature_a + " ↔ " + s.feature_b +
						" r=" + s.correlation + " → suggest drop " + s.suggest_drop + "\n");
				} else if (sn === "impute") {
					post("    " + s.name + ": " + s.missing_count +
						" missing (" + s.missing_pct + "%) → median " + s.suggested_fill.toFixed(4) + "\n");
				} else if (sn === "winsor") {
					post("    " + s.feature + ": clip at [" +
						s.suggested_lo + ", " + s.suggested_hi + "] → " + s.would_clip + " samples\n");
				}
			}
		}
	}

	// Push diagnostics to Dict
	update_diagnostics_dict();

	post("\n  Features: " + state.n_features + " → " + state.diagnostics.n_features_current + "\n");
	post("  Samples:  " + state.n_samples + "\n");
	post("  Preview complete. Use 'commit <filepath>' to write.\n\n");

	emit_feature_mask();
	outlet(0, "preview_done");
}

/**
 * commit <corpus_path> [params_path]
 * Run the pipeline (if not already done) and write output files.
 * The corpus JSON is in fluid.dataset~ format.
 * The params JSON stores transform parameters for runtime use.
 */
function commit() {
	var args = arrayfromargs(arguments);
	if (args.length < 1) {
		post("Usage: commit <corpus_output.json> [params_output.json]\n");
		return;
	}

	var corpus_path = args[0];
	var params_path = (args.length > 1)
		? args[1]
		: corpus_path.replace(".json", "_params.json");

	// Run pipeline if needed
	if (!state.working) {
		var ok = run_pipeline();
		if (!ok) return;
	}

	post("\n══════════════════════════════════════\n");
	post("  EXPORT\n");
	post("══════════════════════════════════════\n");

	// Build fluid.dataset~ compatible JSON.
	// Use working_keys (which may be shorter than sample_keys if the
	// impute "drop" method removed samples). Surviving samples keep
	// their original IDs, so dropped IDs simply do not appear.
	var corpus_out = {
		cols: state.diagnostics.n_features_current,
		data: {}
	};
	var out_keys = state.working_keys || state.sample_keys;
	for (var i = 0; i < state.working.length; i++) {
		corpus_out.data[out_keys[i]] = state.working[i].slice();
	}

	if (write_json_file(corpus_path, corpus_out, false)) {
		post("  Corpus: " + corpus_path + "\n");
	}

	if (write_json_file(params_path, state.transform_params, true)) {
		post("  Params: " + params_path + "\n");
	}

	post("  Done.\n\n");

	emit_feature_mask();
	outlet(0, "committed", corpus_path);
	outlet(2, "bang");
}

// ═══════════════════════════════════════════════════════════════
// REPORT DATA COMPUTATION
// ═══════════════════════════════════════════════════════════════

/**
 * Compute histogram bins for each feature in a matrix.
 * Returns array of { counts[], centers[], min, max } per feature.
 */
function compute_histograms(matrix, n_bins) {
	var n_features = matrix[0].length;
	var result = [];
	for (var f = 0; f < n_features; f++) {
		var col = get_column(matrix, f);
		var mn = Math.min.apply(null, col);
		var mx = Math.max.apply(null, col);
		var step = (mx - mn) / n_bins;
		if (step < 1e-12) step = 1;
		var counts = [];
		var centers = [];
		for (var b = 0; b < n_bins; b++) {
			counts.push(0);
			centers.push(parseFloat((mn + step * (b + 0.5)).toFixed(4)));
		}
		for (var i = 0; i < col.length; i++) {
			var idx = Math.floor((col[i] - mn) / step);
			if (idx >= n_bins) idx = n_bins - 1;
			if (idx < 0) idx = 0;
			counts[idx]++;
		}
		result.push({ counts: counts, centers: centers, min: mn, max: mx });
	}
	return result;
}

/**
 * Compute box-plot statistics for each feature.
 * Returns array of { min, q1, median, q3, max } per feature.
 */
function compute_boxplots(matrix) {
	var n_features = matrix[0].length;
	var result = [];
	for (var f = 0; f < n_features; f++) {
		var col = get_column(matrix, f);
		result.push({
			min:    Math.min.apply(null, col),
			q1:     arr_percentile(col, 25),
			median: arr_median(col),
			q3:     arr_percentile(col, 75),
			max:    Math.max.apply(null, col)
		});
	}
	return result;
}

/**
 * Random sample of n_points from the matrix (Fisher-Yates partial shuffle).
 * Returns a smaller matrix for scatter / parallel-coordinates plots.
 */
function sample_points(matrix, n_points) {
	var n = matrix.length;
	if (n <= n_points) return copy_matrix(matrix);
	var indices = [];
	for (var i = 0; i < n; i++) indices.push(i);
	for (var i = 0; i < n_points; i++) {
		var j = i + Math.floor(Math.random() * (n - i));
		var tmp = indices[i]; indices[i] = indices[j]; indices[j] = tmp;
	}
	var result = [];
	for (var i = 0; i < n_points; i++) {
		result.push(matrix[indices[i]].slice());
	}
	return result;
}

/**
 * Find feature pairs with |r| > threshold and extract scatter data.
 */
function find_scatter_pairs(corr_matrix, names, sample_matrix, threshold) {
	var pairs = [];
	var n = corr_matrix.length;
	for (var i = 0; i < n; i++) {
		for (var j = i + 1; j < n; j++) {
			if (Math.abs(corr_matrix[i][j]) > threshold) {
				var points = [];
				for (var s = 0; s < sample_matrix.length; s++) {
					points.push([
						parseFloat(sample_matrix[s][i].toFixed(4)),
						parseFloat(sample_matrix[s][j].toFixed(4))
					]);
				}
				pairs.push({
					i: i, j: j,
					name_i: names[i], name_j: names[j],
					r: parseFloat(corr_matrix[i][j].toFixed(4)),
					points: points
				});
			}
		}
	}
	return pairs;
}


/**
 * report <diagnostics_path>
 * Write a comprehensive diagnostics JSON file for the jweb report.
 * Must run preview first.
 */
function report() {
	var args = arrayfromargs(arguments);

	if (!state.diagnostics.after) {
		post("Error: run 'preview' first\n");
		return;
	}

	post("  Computing report data...\n");

	// Build a "before" matrix with only the kept features.
	// If the impute "drop" method removed samples, state.working has fewer
	// rows than state.raw. We align "before" to the SURVIVING samples so the
	// before/after sample plots use matching rows.
	var kept = state.kept_indices || [];
	var n_out = state.working.length;

	// Map each surviving output row back to its original raw row index.
	// working_keys[i] is the sample key of output row i; we find that key's
	// position in the original sample_keys to index into state.raw.
	var key_to_raw = {};
	for (var ki = 0; ki < state.sample_keys.length; ki++) {
		key_to_raw[state.sample_keys[ki]] = ki;
	}
	var out_keys2 = state.working_keys || state.sample_keys;

	var raw_kept = new Array(n_out);
	for (var i = 0; i < n_out; i++) {
		var raw_row = key_to_raw[out_keys2[i]];
		raw_kept[i] = [];
		for (var k = 0; k < kept.length; k++) {
			raw_kept[i].push(state.raw[raw_row][kept[k]]);
		}
	}

	// Histograms: 40 bins per feature, before and after
	var hist_before = compute_histograms(raw_kept, 40);
	var hist_after  = compute_histograms(state.working, 40);

	// Box plots
	var box_before = compute_boxplots(raw_kept);
	var box_after  = compute_boxplots(state.working);

	// Random sample of 500 points (same indices for before and after)
	var sample_size = Math.min(500, n_out);
	var indices = [];
	for (var si = 0; si < n_out; si++) indices.push(si);
	for (var si = 0; si < sample_size; si++) {
		var sj = si + Math.floor(Math.random() * (n_out - si));
		var tmp = indices[si]; indices[si] = indices[sj]; indices[sj] = tmp;
	}
	var sample_b = [], sample_a = [];
	for (var si = 0; si < sample_size; si++) {
		var idx = indices[si];
		sample_b.push(raw_kept[idx].slice());
		sample_a.push(state.working[idx].slice());
	}

	// Scatter pairs: features with |r| > 0.5
	var scatter = [];
	var corr = state.diagnostics.correlation_after;
	if (corr) {
		scatter = find_scatter_pairs(corr, state.diagnostics.feature_names, sample_a, 0.5);
	}

	// Pipeline summary
	var ps = { n_imputed: 0, n_dropped: 0, n_logged: 0, n_clipped: 0 };
	var sr = state.diagnostics.step_reports;
	if (sr.impute) {
		for (var ii = 0; ii < sr.impute.applied.length; ii++)
			ps.n_imputed += sr.impute.applied[ii].count;
	}
	if (sr.correlate) ps.n_dropped = sr.correlate.dropped.length;
	if (sr.log) ps.n_logged = sr.log.applied.length;
	if (sr.winsor) {
		for (var wi = 0; wi < sr.winsor.applied.length; wi++)
			ps.n_clipped += sr.winsor.applied[wi].n_clipped;
	}

	// Assemble full report object
	var diag_out = {
		n_samples:           state.n_samples,
		n_features_original: state.n_features,
		n_features_current:  state.diagnostics.n_features_current,
		feature_names:       state.diagnostics.feature_names,
		modes:               state.modes,
		params:              state.params,
		before:              state.diagnostics.before,
		after:               state.diagnostics.after,
		correlation_matrix:  corr,
		step_reports:        state.diagnostics.step_reports,
		suggestions:         state.diagnostics.suggestions,
		histograms_before:   hist_before,
		histograms_after:    hist_after,
		boxplots_before:     box_before,
		boxplots_after:      box_after,
		sample_before:       sample_b,
		sample_after:        sample_a,
		scatter_pairs:       scatter,
		pipeline_summary:    ps
	};

	// Sanitize NaN/Infinity
	var json_str = JSON.stringify(diag_out, function(key, val) {
		if (typeof val === "number" && !isFinite(val)) return 0;
		return val;
	});

	// ── Write to Dict "preprocess_report" ──
	// The HTML template reads this via window.max.getDict()
	var report_dict = new Dict("preprocess_report");
	report_dict.parse(json_str);
	post("  Dict 'preprocess_report' updated (" + json_str.length + " chars)\n");

	// ── Optionally export JSON file ──
	if (args.length > 0) {
		var json_path = args[0];
		if (write_json_file(json_path, diag_out, false)) {
			post("  JSON exported: " + json_path + "\n");
		}
	}

	post("  Report ready. Load report.html in [jweb].\n\n");
	outlet(0, "report_ready");
}

/**
 * get_modes — print current mode of each step
 */
function get_modes() {
	post("  Modes:\n");
	var step_names = ["impute", "correlate", "log", "winsor"];
	for (var i = 0; i < step_names.length; i++) {
		post("    " + step_names[i] + ": " + state.modes[step_names[i]] + "\n");
	}
}

/**
 * get_params <step> — print current parameters of a step
 */
function get_params(step) {
	if (!state.params.hasOwnProperty(step)) {
		post("Error: unknown step '" + step + "'\n");
		return;
	}
	post("  " + step + " params:\n");
	var p = state.params[step];
	var keys_list = Object.keys(p);
	for (var i = 0; i < keys_list.length; i++) {
		post("    " + keys_list[i] + " = " + JSON.stringify(p[keys_list[i]]) + "\n");
	}
}

/**
 * reset — reset all modes to "off" and parameters to defaults
 */
function reset() {
	state.modes.impute    = "off";
	state.modes.correlate = "off";
	state.modes.log       = "off";
	state.modes.winsor    = "off";

	state.params.impute.method        = "median";
	state.params.impute.fill_values   = null;
	state.params.impute.nan_sentinel  = null;
	state.params.correlate.threshold  = 0.85;
	state.params.correlate.keep_indices   = null;
	state.params.correlate.prefer_indices = null;
	state.params.log.indices          = null;
	state.params.log.skew_threshold   = 2.0;
	state.params.winsor.lo_pct        = 2;
	state.params.winsor.hi_pct        = 98;
	state.params.winsor.boundaries    = null;

	state.working = null;
	state.diagnostics = {
		before: null, after: null,
		step_reports: {}, suggestions: {},
		correlation_after: null,
		n_features_current: 0, feature_names: []
	};

	post("  All modes and parameters reset to defaults.\n");
	outlet(0, "reset");
}


// ═══════════════════════════════════════════════════════════════
// STRING UTILITY
// ═══════════════════════════════════════════════════════════════

function pad_str(s, width) {
	s = String(s);
	while (s.length < width) s += " ";
	return s;
}


// ═══════════════════════════════════════════════════════════════
// INITIALIZATION
// ═══════════════════════════════════════════════════════════════

post("\n══════════════════════════════════════\n");
post("  preprocess_v3.js loaded\n");
post("  Messages: load, set_mode, set_param,\n");
post("    preview, commit, report, get_modes,\n");
post("    get_params, reset\n");
post("══════════════════════════════════════\n\n");
