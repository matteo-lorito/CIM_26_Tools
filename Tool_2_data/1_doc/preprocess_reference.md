# preprocess.js — Message Reference & Usage Guide

## Messages

### `load <filepath>`
Load a raw JSON corpus in fluid.dataset~ format.

```
load /Users/you/Desktop/corpus_raw.json
load corpus_raw.json                         ← searches Max file path
```

**Output (outlet 0):** `loaded <n_samples> <n_features>`

---

### `set_mode <step> <off|auto|manual>`
Set the operating mode for a pipeline step.

| Step        | Description                            |
|-------------|----------------------------------------|
| `impute`    | Missing value detection and filling    |
| `correlate` | Correlation-based feature pruning      |
| `log`       | Signed log1p transform                 |
| `winsor`    | Percentile clipping (winsorization)    |

| Mode     | Behavior                                              |
|----------|-------------------------------------------------------|
| `off`    | Step is skipped entirely                               |
| `auto`   | Step runs using internal heuristics                    |
| `manual` | Step analyzes and suggests, applies only user params   |

```
set_mode impute auto
set_mode correlate auto
set_mode log manual
set_mode winsor auto
```

---

### `set_param <step> <key> <value...>`
Set parameters for a specific step. Multiple values are space-separated.

#### Impute parameters:
```
set_param impute nan_sentinel -1          ← treat -1 as missing
set_param impute nan_sentinel 0           ← treat 0 as missing
set_param impute fill_values 0.5 3.7 1.2  ← manual fill values per feature
```

#### Correlate parameters:
```
set_param correlate threshold 0.85        ← |r| above this triggers pruning (default 0.85)
set_param correlate threshold 0.9         ← more permissive — keeps more features
set_param correlate keep_indices 0 1 3 5 7  ← manual: keep only these original indices
set_param correlate prefer_indices 0 3    ← in auto mode, prefer keeping these features
```

#### Log parameters:
```
set_param log skew_threshold 2.0          ← auto: apply log when |skewness| > this (default 2.0)
set_param log skew_threshold 1.5          ← more aggressive — transforms more features
set_param log indices 1 4                 ← manual: log-transform these original feature indices
set_param log indices 1 4 6 9             ← manual: log-transform four features
```

#### Winsor parameters:
```
set_param winsor lo_pct 2                 ← lower percentile (default 2)
set_param winsor hi_pct 98                ← upper percentile (default 98)
set_param winsor lo_pct 5                 ← more aggressive clipping
set_param winsor hi_pct 95
```

---

### `preview`
Run the full pipeline with current settings. Computes diagnostics, prints
before/after stats to the Max console, and pushes data to the
`preprocess_diagnostics` Dict for the v8ui panel. **Does not write any files.**

```
preview
```

**Output (outlet 0):** `preview_done`
**Output (outlet 1):** `diagnostics preprocess_diagnostics`

---

### `commit <corpus_path> [params_path]`
Run the pipeline and write two files to disk:
1. The processed corpus JSON (fluid.dataset~ format)
2. The transform parameters JSON

If `params_path` is omitted, it defaults to `<corpus_path>_params.json`.

```
commit /Users/you/Desktop/corpus_processed.json
commit /Users/you/Desktop/corpus_processed.json /Users/you/Desktop/my_params.json
commit corpus_processed.json
```

**Output (outlet 0):** `committed <corpus_path>`
**Output (outlet 2):** `bang` — connect this to `fluid.dataset~ load`

---

### `report <diagnostics_path.json>`
Write a diagnostics JSON file and a self-contained HTML report.
Both files go to the same directory (the HTML replaces `.json` with `.html`).
Must run `preview` first.

```
report /Users/you/Desktop/diagnostics.json
```

This writes:
- `diagnostics.json` — raw data for programmatic access
- `diagnostics.html` — visual report for jweb (Chart.js charts, heatmap)

**Output (outlet 0):** `report_written <json_path> <html_path>`

---

### `get_modes`
Print current mode of each step to the Max console.

```
get_modes
```

---

### `get_params <step>`
Print current parameters of a step to the Max console.

```
get_params log
get_params winsor
get_params correlate
```

---

### `reset`
Reset all modes to `off` and all parameters to their defaults.
Clears any previous preview results.

```
reset
```

**Output (outlet 0):** `reset`

---

## Outlets

| Outlet | Content                          | Use                                      |
|--------|----------------------------------|------------------------------------------|
| 0      | Status messages (symbol + args)  | Connect to `print` or `route`            |
| 1      | `diagnostics <dict_name>`        | Connect to v8ui panel inlet              |
| 2      | `bang`                           | Connect to `fluid.dataset~` load trigger |

---

## Usage Examples

### Example 1: Quick auto-processing
Everything automatic — let the system decide.

```
load corpus_raw.json
set_mode impute auto
set_mode correlate auto
set_mode log auto
set_mode winsor auto
preview
commit corpus_processed.json
```

### Example 2: Manual log control
Auto for everything except log — inspect suggestions, then choose.

```
load corpus_raw.json
set_mode impute auto
set_mode correlate auto
set_mode log manual
set_mode winsor auto
preview
```

Console shows:
```
  Suggestions (manual mode)
  [log]
    Loudness Range (orig 1): apply log1p (|skew| = 3.12 > 2.0)
    Spectral Flux (orig 4): apply log1p (|skew| = 4.21 > 2.0)
```

You decide to follow the suggestion:
```
set_param log indices 1 4
preview
commit corpus_processed.json
```

### Example 3: Conservative approach — preview first, enable step by step
Start with everything off, enable one step at a time.

```
load corpus_raw.json
preview                               ← baseline stats, no processing

set_mode impute auto
preview                               ← see effect of imputation alone

set_mode log auto
preview                               ← see effect of imputation + log

set_mode winsor auto
preview                               ← see effect of all three

commit corpus_processed.json
```

### Example 4: Adjusting correlation threshold
Default threshold (0.85) drops too many features.

```
load corpus_raw.json
set_mode correlate auto
preview
```

Console shows it dropped 3 features. Try a stricter threshold:
```
set_param correlate threshold 0.95
preview
```

Now only 1 feature dropped. Better. But you want to keep feature 0 (Brightness)
no matter what:
```
set_param correlate prefer_indices 0
preview
commit corpus_processed.json
```

### Example 5: Dealing with metadata in the last column
Your JSON has 11 values per sample but column 10 is metadata (e.g. duration).
Use manual correlation mode to exclude it:

```
load corpus_raw.json
set_mode correlate manual
set_param correlate keep_indices 0 1 2 3 4 5 6 7 8 9
preview
set_mode log auto
set_mode winsor auto
preview
commit corpus_processed.json
```

### Example 6: Treating zeros as missing values
Some features use 0.0 as a sentinel for "no value detected":

```
load corpus_raw.json
set_mode impute auto
set_param impute nan_sentinel 0
preview
```

Console shows how many zeros were replaced per feature.

### Example 7: Full pipeline with report
Complete workflow including visual diagnostics:

```
load corpus_raw.json
set_mode impute auto
set_mode correlate auto
set_mode log manual
set_mode winsor auto
preview

set_param log indices 1 4
preview

commit corpus_processed.json
report diagnostics.json
```

Then in Max, load the HTML report in jweb:
```
;  to jweb:
url file:///Users/you/Desktop/diagnostics.html
```

### Example 8: Aggressive outlier clipping
Wider winsorization for a corpus with many extreme values:

```
set_mode winsor auto
set_param winsor lo_pct 5
set_param winsor hi_pct 95
preview
```

### Example 9: Starting over
Reset everything and try a different approach:

```
reset
load corpus_raw.json
set_mode log auto
set_param log skew_threshold 1.5
preview
```

---

## Typical Max Patcher Wiring

```
[message box]
    |
[js preprocess.js]
    |          |            |
    0          1            2
    |          |            |
[route       [v8ui         [t b]
 loaded       diagnostics   |
 mode         _ui.js       [fluid.dataset~ load processed.json]
 committed    @size 620 520]  |
 error                     [fluid.standardize~]
 preview_done]               |
                           [fluid.kdtree~]
```

---

## Pipeline Order (fixed)

```
1. Impute     →  fill NaN / sentinel values with median
2. Correlate  →  drop features with |r| > threshold
3. Log        →  sign(x) · log(1 + |x|) on skewed features
4. Winsor     →  clip to [percentile_lo, percentile_hi]
────────────────────────────────────────────────────────
5. (FluCoMa)  →  fluid.standardize~ or fluid.robustscale~
6. (FluCoMa)  →  fluid.umap~ (optional)
7. (FluCoMa)  →  fluid.kdtree~ for queries
```
