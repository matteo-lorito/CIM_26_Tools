/*
 * form_features_names_array_v2.js — column names for the Data Selection table
 *
 * Messages (same as v1, same inlet):
 *   dictionary <name>               the "data" sub-dictionary of the loaded dataset
 *   features_array <11 ints 0/1>    which features were analysed (select_feature)
 *   featuresDroppingUpdate <0/1 …>  preprocessing mask over the analysed features
 * Outlets (same as v1):
 *   0: "samples <n>"
 *   1: list of column names  ->  [t l b]  ->  header_reset, then header
 *
 * Fixes in v2:
 *   - v1 sent the header when the dictionary arrived, but in the patch the
 *     dictionary arrives FIRST and features_array SECOND (same [t b b l]), so a
 *     raw dataset sent straight after the analysis got an empty header.
 *     v2 re-sends the header every time new information arrives; the last
 *     message of the trigger always leaves the correct one.
 *   - v1 applied the last preprocessing mask to any dataset, so raw data sent
 *     after a preprocessing session got the reduced column names.
 *     v2 chooses by the number of columns ACTUALLY in the data:
 *       columns == features after the mask   -> masked names (standardized data)
 *       columns == analysed features         -> analysed names (raw data)
 *       otherwise                            -> col_1 … col_n, with a warning
 */
outlets = 2;

const featuresList = [
    "Centroid",
    "Rolloff",
    "Crest",
    "Loudness_range",
    "Amplitude",
    "Spectral_tilt",
    "Spectral_flux",
    "Harmonic-to-Noise_ratio",
    "Pitch_Salience",
    "MFCC_5",
    "Duration_(ms)"
];

let selection = [];     // 11 flags from select_feature
let mask = null;        // flags over the SELECTED features, from preprocessing
let nCols = -1;         // columns in the last loaded data (-1 = nothing loaded yet)
let lastSent = null;    // header last sent, to avoid repeating identical output

function selectedNames() {
    const out = [];
    for (let i = 0; i < selection.length && i < featuresList.length; i++) {
        if (selection[i] === 1) out.push(featuresList[i]);
    }
    return out;
}

function maskedNames() {
    if (mask === null) return null;
    const sel = selectedNames();
    if (mask.length !== sel.length) return null;   // mask from another selection
    const out = [];
    for (let i = 0; i < sel.length; i++) if (mask[i] === 1) out.push(sel[i]);
    return out;
}

function chooseHeader() {
    const sel = selectedNames();
    const masked = maskedNames();
    if (nCols < 0) return sel;                                     // nothing loaded yet
    if (masked && masked.length === nCols && masked.length !== sel.length) return masked;
    if (sel.length === nCols) return sel;
    if (masked && masked.length === nCols) return masked;
    // nothing matches: generic names, so the table still has a header
    if (nCols > 0) {
        post("form_features_names_array: " + nCols + " columns in the data, but " + sel.length +
             " selected features" + (masked ? " and " + masked.length + " after the mask" : "") +
             " - using generic names\n");
    }
    const generic = [];
    for (let i = 1; i <= nCols; i++) generic.push("col_" + i);
    return generic;
}

function emitHeader(force) {
    const header = chooseHeader();
    const key = header.join("\u0001");
    if (!force && key === lastSent) return;
    lastSent = key;
    outlet(1, header);
}

function features_array(...n) {
    selection = n;
    emitHeader(false);
}

function featuresDroppingUpdate(...n) {
    mask = n;
    emitHeader(false);
}

// v8 passes the dictionary contents as a JS object
function msg_dictionary(thisDict) {
    const keys = Object.keys(thisDict || {});
    nCols = 0;
    if (keys.length > 0) {
        const first = thisDict[keys[0]];
        nCols = Array.isArray(first) ? first.length : 1;
    }
    outlet(0, "samples " + keys.length);
    emitHeader(true);   // a new table always gets its header, even if unchanged
}
