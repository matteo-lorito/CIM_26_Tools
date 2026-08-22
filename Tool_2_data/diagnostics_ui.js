
autowatch = 1;
mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;

inlets = 1;
outlets = 0;

// ═══════════════════════════════════════════════════════════════
// COLOR PALETTE (dark theme, harmonized with the visualizations)
// ═══════════════════════════════════════════════════════════════

var C = {
	bg:          [0.118, 0.118, 0.114, 1.0],
	panel:       [0.145, 0.145, 0.140, 1.0],
	border:      [0.220, 0.220, 0.212, 1.0],
	text:        [0.761, 0.753, 0.714, 1.0],
	text_dim:    [0.500, 0.494, 0.463, 1.0],
	text_bright: [0.941, 0.929, 0.878, 1.0],
	green:       [0.388, 0.600, 0.133, 1.0],
	red:         [0.886, 0.294, 0.290, 1.0],
	orange:      [0.937, 0.624, 0.153, 1.0],
	blue:        [0.216, 0.541, 0.867, 1.0],
	purple:      [0.498, 0.467, 0.867, 1.0],
	row_alt:     [0.130, 0.130, 0.126, 1.0],
	heatmap_neg: [0.216, 0.541, 0.867],   // blue (no alpha — used for interpolation)
	heatmap_zero:[0.200, 0.200, 0.195],
	heatmap_pos: [0.886, 0.294, 0.290]    // red
};

var FONT = "Arial";
var DICT_NAME = "preprocess_diagnostics";

// Cached data from the Dict
var data = null;

// Layout constants
var MARGIN = 12;
var HEADER_H = 44;
var MODES_H = 28;
var ROW_H = 18;
var HEATMAP_CELL = 0;  // computed dynamically


// ═══════════════════════════════════════════════════════════════
// DICT READING
// ═══════════════════════════════════════════════════════════════

function read_dict() {
	var d;
	try {
		d = new Dict(DICT_NAME);
	} catch (e) {
		return null;
	}

	var n = d.get("n_samples");
	if (!n || n === 0) return null;

	var obj = {
		n_samples:    d.get("n_samples"),
		n_feat_orig:  d.get("n_features_original"),
		n_feat_curr:  d.get("n_features_current"),
		names:        to_array(d.get("feature_names")),
		modes: {
			impute:    d.get("mode_impute")    || "off",
			correlate: d.get("mode_correlate") || "off",
			log:       d.get("mode_log")       || "off",
			winsor:    d.get("mode_winsor")     || "off"
		},
		sk_b: to_array(d.get("skewness_before")),
		sk_a: to_array(d.get("skewness_after")),
		ku_b: to_array(d.get("kurtosis_before")),
		ku_a: to_array(d.get("kurtosis_after")),
		mn_b: to_array(d.get("min_before")),
		mn_a: to_array(d.get("min_after")),
		mx_b: to_array(d.get("max_before")),
		mx_a: to_array(d.get("max_after")),
		sd_b: to_array(d.get("std_before")),
		sd_a: to_array(d.get("std_after")),
		corr_flat: to_array(d.get("correlation_flat")),
		corr_size: d.get("correlation_size") || 0,
		sug_log:       try_parse_json(d.get("suggestions_log")),
		sug_correlate: try_parse_json(d.get("suggestions_correlate")),
		sug_impute:    try_parse_json(d.get("suggestions_impute")),
		sug_winsor:    try_parse_json(d.get("suggestions_winsor"))
	};

	return obj;
}

/** Ensure a value is an array (Dict sometimes returns non-array for single items). */
function to_array(v) {
	if (!v) return [];
	if (v instanceof Array) return v;
	return [v];
}

function try_parse_json(s) {
	if (!s) return [];
	if (typeof s !== "string") return [];
	try { return JSON.parse(s); } catch (e) { return []; }
}


// ═══════════════════════════════════════════════════════════════
// MESSAGE HANDLERS
// ═══════════════════════════════════════════════════════════════

/**
 * Receives "diagnostics <dict_name>" from preprocess.js outlet 1.
 */
function diagnostics() {
	data = read_dict();
	mgraphics.redraw();
}

function bang() {
	data = read_dict();
	mgraphics.redraw();
}

/**
 * Catch-all: any unrecognized message triggers a refresh.
 */
function anything() {
	data = read_dict();
	mgraphics.redraw();
}


// ═══════════════════════════════════════════════════════════════
// DRAWING HELPERS
// ═══════════════════════════════════════════════════════════════

function set_color(c) {
	mgraphics.set_source_rgba(c[0], c[1], c[2], c[3] !== undefined ? c[3] : 1.0);
}

function fill_rect(x, y, w, h) {
	mgraphics.rectangle(x, y, w, h);
	mgraphics.fill();
}

function draw_text(str, x, y, size, color, bold) {
	set_color(color || C.text);
	mgraphics.select_font_face(FONT);
	mgraphics.set_font_size(size || 11);
	mgraphics.move_to(x, y);
	mgraphics.show_text(String(str));
}

function draw_text_right(str, x, y, size, color) {
	set_color(color || C.text);
	mgraphics.select_font_face(FONT);
	mgraphics.set_font_size(size || 11);
	var m = mgraphics.text_measure(String(str));
	mgraphics.move_to(x - m[0], y);
	mgraphics.show_text(String(str));
}

/** Interpolate between two RGB arrays based on t in [-1, 1]. */
function heatmap_color(val) {
	var t = Math.max(-1, Math.min(1, val));
	var r, g, b;
	if (t < 0) {
		// Interpolate from zero to negative (blue)
		var s = -t;
		r = C.heatmap_zero[0] * (1 - s) + C.heatmap_neg[0] * s;
		g = C.heatmap_zero[1] * (1 - s) + C.heatmap_neg[1] * s;
		b = C.heatmap_zero[2] * (1 - s) + C.heatmap_neg[2] * s;
	} else {
		var s = t;
		r = C.heatmap_zero[0] * (1 - s) + C.heatmap_pos[0] * s;
		g = C.heatmap_zero[1] * (1 - s) + C.heatmap_pos[1] * s;
		b = C.heatmap_zero[2] * (1 - s) + C.heatmap_pos[2] * s;
	}
	return [r, g, b, 1];
}

/** Color for a skewness/kurtosis change: green if improved, red if worsened. */
function improvement_color(before, after) {
	var abs_b = Math.abs(before);
	var abs_a = Math.abs(after);
	if (abs_a < abs_b - 0.1) return C.green;    // improved
	if (abs_a > abs_b + 0.1) return C.red;       // worsened
	return C.text;                                // unchanged
}

/** Color for a mode indicator. */
function mode_color(mode) {
	if (mode === "auto") return C.green;
	if (mode === "manual") return C.orange;
	return C.text_dim;  // off
}

/** Format a number to fixed decimals with sign. */
function fmt(val, decimals) {
	if (val === undefined || val === null || isNaN(val)) return "n/a";
	var d = decimals !== undefined ? decimals : 2;
	var s = val.toFixed(d);
	if (val >= 0) s = "+" + s;
	return s;
}


// ═══════════════════════════════════════════════════════════════
// MAIN PAINT
// ═══════════════════════════════════════════════════════════════

function paint() {
	var w = mgraphics.size[0];
	var h = mgraphics.size[1];

	// Background
	set_color(C.bg);
	fill_rect(0, 0, w, h);

	if (!data) {
		draw_text("No diagnostics — run 'preview' first", w / 2 - 100, h / 2, 12, C.text_dim);
		return;
	}

	var y = MARGIN;

	// ── Header ──
	y = draw_header(w, y);

	// ── Mode indicators ──
	y = draw_modes(w, y);

	// ── Stats table ──
	y = draw_stats_table(w, y);

	// ── Bottom row: correlation heatmap + suggestions ──
	draw_bottom_section(w, y, h);
}


// ═══════════════════════════════════════════════════════════════
// SECTION: Header
// ═══════════════════════════════════════════════════════════════

function draw_header(w, y) {
	set_color(C.panel);
	fill_rect(MARGIN, y, w - MARGIN * 2, HEADER_H);

	draw_text("PREPROCESSOR", MARGIN + 10, y + 18, 13, C.text_bright);

	var info = data.n_samples + " samples  ×  " +
		data.n_feat_orig + " → " + data.n_feat_curr + " features";
	draw_text(info, MARGIN + 10, y + 34, 10, C.text_dim);

	return y + HEADER_H + 6;
}


// ═══════════════════════════════════════════════════════════════
// SECTION: Mode indicators
// ═══════════════════════════════════════════════════════════════

function draw_modes(w, y) {
	var steps = ["impute", "correlate", "log", "winsor"];
	var x = MARGIN;
	var chip_h = 20;
	var gap = 6;

	for (var i = 0; i < steps.length; i++) {
		var mode = data.modes[steps[i]];
		var label = steps[i] + ": " + mode;

		mgraphics.select_font_face(FONT);
		mgraphics.set_font_size(10);
		var tw = mgraphics.text_measure(label)[0] + 16;

		// Chip background
		var mc = mode_color(mode);
		mgraphics.set_source_rgba(mc[0], mc[1], mc[2], 0.15);
		fill_rect(x, y, tw, chip_h);

		// Chip border
		mgraphics.set_source_rgba(mc[0], mc[1], mc[2], 0.5);
		mgraphics.set_line_width(0.5);
		mgraphics.rectangle(x, y, tw, chip_h);
		mgraphics.stroke();

		// Chip text
		draw_text(label, x + 8, y + 14, 10, mc);

		x += tw + gap;
	}

	return y + chip_h + 8;
}


// ═══════════════════════════════════════════════════════════════
// SECTION: Per-feature statistics table
// ═══════════════════════════════════════════════════════════════

function draw_stats_table(w, y) {
	var n = data.names.length;
	var table_w = w - MARGIN * 2;

	// Column positions (proportional)
	var cols = {
		name: MARGIN + 6,
		sk_b: MARGIN + table_w * 0.32,
		sk_a: MARGIN + table_w * 0.45,
		ku_b: MARGIN + table_w * 0.58,
		ku_a: MARGIN + table_w * 0.71,
		range: MARGIN + table_w * 0.84
	};

	// Table header
	set_color(C.panel);
	fill_rect(MARGIN, y, table_w, ROW_H);

	draw_text("Feature",    cols.name, y + 13, 9, C.text_dim);
	draw_text_right("sk bef", cols.sk_b + 40, y + 13, 9, C.text_dim);
	draw_text_right("sk aft", cols.sk_a + 40, y + 13, 9, C.text_dim);
	draw_text_right("ku bef", cols.ku_b + 40, y + 13, 9, C.text_dim);
	draw_text_right("ku aft", cols.ku_a + 40, y + 13, 9, C.text_dim);
	draw_text_right("range",  cols.range + 50, y + 13, 9, C.text_dim);

	y += ROW_H;

	// Separator line
	set_color(C.border);
	mgraphics.set_line_width(0.5);
	mgraphics.move_to(MARGIN, y);
	mgraphics.line_to(MARGIN + table_w, y);
	mgraphics.stroke();

	// Data rows
	for (var i = 0; i < n; i++) {
		// Alternating row background
		if (i % 2 === 1) {
			set_color(C.row_alt);
			fill_rect(MARGIN, y, table_w, ROW_H);
		}

		var row_y = y + 13;
		var name_str = data.names[i];
		if (name_str.length > 18) name_str = name_str.substring(0, 16) + "..";

		// Feature name
		draw_text(name_str, cols.name, row_y, 10, C.text);

		// Skewness before/after with color
		draw_text_right(fmt(data.sk_b[i], 2), cols.sk_b + 40, row_y, 10, C.text_dim);
		draw_text_right(fmt(data.sk_a[i], 2), cols.sk_a + 40, row_y, 10,
			improvement_color(data.sk_b[i], data.sk_a[i]));

		// Kurtosis before/after with color
		draw_text_right(fmt(data.ku_b[i], 1), cols.ku_b + 40, row_y, 10, C.text_dim);
		draw_text_right(fmt(data.ku_a[i], 1), cols.ku_a + 40, row_y, 10,
			improvement_color(data.ku_b[i], data.ku_a[i]));

		// Range after
		var range_str = data.mn_a[i].toFixed(1) + " .. " + data.mx_a[i].toFixed(1);
		draw_text_right(range_str, cols.range + 50, row_y, 9, C.text_dim);

		y += ROW_H;
	}

	// Bottom separator
	set_color(C.border);
	mgraphics.move_to(MARGIN, y);
	mgraphics.line_to(MARGIN + table_w, y);
	mgraphics.stroke();

	return y + 8;
}


// ═══════════════════════════════════════════════════════════════
// SECTION: Bottom — correlation heatmap + suggestions
// ═══════════════════════════════════════════════════════════════

function draw_bottom_section(w, y, h) {
	var available_h = h - y - MARGIN;
	if (available_h < 60) return;

	// Split bottom area: left = heatmap, right = suggestions
	var split = Math.min(w * 0.5, available_h + 40);

	draw_heatmap(MARGIN, y, split - MARGIN - 4, available_h);
	draw_suggestions(split + 4, y, w - split - MARGIN - 4, available_h);
}

function draw_heatmap(x, y, max_w, max_h) {
	var n = data.corr_size;
	if (n === 0 || data.corr_flat.length === 0) return;

	// Label area
	var label_offset = 55;
	var available = Math.min(max_w - label_offset, max_h - label_offset - 16);
	var cell = Math.floor(available / n);
	if (cell < 8) cell = 8;

	var hx = x + label_offset;
	var hy = y + 16;  // leave room for title

	draw_text("Correlation", x, y + 10, 10, C.text_dim);

	// Draw column labels (rotated text isn't easy in mgraphics, so abbreviate horizontally)
	for (var c = 0; c < n; c++) {
		var abbr = data.names[c].substring(0, 3);
		draw_text(abbr, hx + c * cell + 2, hy - 2, 7, C.text_dim);
	}

	// Draw rows
	for (var r = 0; r < n; r++) {
		// Row label
		var rname = data.names[r];
		if (rname.length > 8) rname = rname.substring(0, 7) + ".";
		draw_text(rname, x, hy + r * cell + cell - 3, 8, C.text_dim);

		for (var c2 = 0; c2 < n; c2++) {
			var val = data.corr_flat[r * n + c2];
			var col = heatmap_color(val);
			set_color(col);
			fill_rect(hx + c2 * cell, hy + r * cell, cell - 1, cell - 1);

			// Draw value text if cell is large enough
			if (cell >= 22) {
				var tv = val.toFixed(1);
				draw_text(tv, hx + c2 * cell + 2, hy + r * cell + cell - 4, 7,
					[0, 0, 0, 0.7]);
			}
		}
	}
}

function draw_suggestions(x, y, max_w, max_h) {
	draw_text("Suggestions", x, y + 10, 10, C.text_dim);

	var sy = y + 24;
	var line_h = 14;

	// Collect suggestions from all steps
	var all_sugs = [];

	if (data.sug_correlate && data.sug_correlate.length > 0) {
		for (var i = 0; i < data.sug_correlate.length; i++) {
			var s = data.sug_correlate[i];
			all_sugs.push({
				step: "corr",
				text: s.feature_a + " ↔ " + s.feature_b + "  r=" + s.correlation,
				color: C.red
			});
		}
	}

	if (data.sug_log && data.sug_log.length > 0) {
		for (var i2 = 0; i2 < data.sug_log.length; i2++) {
			var s2 = data.sug_log[i2];
			all_sugs.push({
				step: "log",
				text: s2.feature + "  |sk|=" + Math.abs(s2.skewness).toFixed(2),
				color: C.orange
			});
		}
	}

	if (data.sug_impute && data.sug_impute.length > 0) {
		for (var i3 = 0; i3 < data.sug_impute.length; i3++) {
			var s3 = data.sug_impute[i3];
			all_sugs.push({
				step: "imp",
				text: s3.name + "  " + s3.missing_count + " NaN (" + s3.missing_pct + "%)",
				color: C.purple
			});
		}
	}

	if (data.sug_winsor && data.sug_winsor.length > 0) {
		var clip_count = 0;
		for (var i4 = 0; i4 < data.sug_winsor.length; i4++) {
			clip_count += data.sug_winsor[i4].would_clip;
		}
		if (clip_count > 0) {
			all_sugs.push({
				step: "win",
				text: clip_count + " values to clip across all features",
				color: C.blue
			});
		}
	}

	if (all_sugs.length === 0) {
		draw_text("No suggestions", x, sy + 10, 10, C.text_dim);
		return;
	}

	// Draw suggestion lines
	for (var si = 0; si < all_sugs.length && sy < y + max_h - line_h; si++) {
		var sug = all_sugs[si];

		// Step badge
		set_color(sug.color);
		mgraphics.set_source_rgba(sug.color[0], sug.color[1], sug.color[2], 0.2);
		fill_rect(x, sy - 2, 30, line_h);
		draw_text(sug.step, x + 3, sy + 9, 8, sug.color);

		// Suggestion text
		var sug_text = sug.text;
		if (sug_text.length > 35) sug_text = sug_text.substring(0, 33) + "..";
		draw_text(sug_text, x + 34, sy + 9, 9, C.text);

		sy += line_h + 2;
	}
}


// ═══════════════════════════════════════════════════════════════
// INIT
// ═══════════════════════════════════════════════════════════════

post("diagnostics_ui.js loaded\n");
