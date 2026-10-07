/*
 * final_database_order_v2.js
 * Replaces the v8.codebox in [p process] that turns the merged dataset
 * dump ("final_database") into the ordered raw dictionary
 * ("final_database_ordered") written to results/raw_dataset.json.
 *
 * v2: always re-create the empty "data" sub-dictionary after clear();
 *     a Max dict cannot write "data::key" unless "data" already exists.
 * Fix (v1): the output dict is now EMPTIED at every bang. Before, it was
 * emptied only when the script loaded, so a 20-file analysis after a
 * 1070-file analysis kept sample_021 ... sample_1070 from the old one.
 *
 * Messages (unchanged):
 *   features_array <11 ints 0/1>   which features are selected
 *   bang                           build the ordered dict and output it
 * Outlet 0: dictionary final_database_ordered
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

const d = new Dict("final_database");          // input: dump of the merged dataset
const e = new Dict("final_database_ordered");  // output: written to raw_dataset.json
let resultingFeaturesArray = [];

function features_array(...n) {
    resultingFeaturesArray = [];
    for (let i = 0; i < n.length && i < featuresList.length; i++) {
        if (n[i] === 1) resultingFeaturesArray.push(featuresList[i]);
    }
}

// Max returns a single string (not an array) when a dict has one key,
// and null when it has none.
function keysOf(dict) {
    if (!dict) return [];
    const k = dict.getkeys();
    if (k === null || k === undefined) return [];
    return Array.isArray(k) ? k : [k];
}

// "sample_7" -> 7, "sample_1070" -> 1070 (keeps natural order past 999)
function indexOf(key) {
    const m = String(key).match(/(\d+)$/);
    return m ? parseInt(m[1], 10) : Number.MAX_SAFE_INTEGER;
}

function bang() {
    const data = d.contains("data") ? d.get("data") : null;
    const dataKeys = keysOf(data).slice().sort(function (a, b) { return indexOf(a) - indexOf(b); });

    // THE FIX: start from an empty dict every time
    e.clear();
    e.set("cols", d.contains("cols") ? d.get("cols") : 0);
    e.set("features", resultingFeaturesArray);
    e.set("data", {});   // must exist before any "data::key" write

    for (let i = 0; i < dataKeys.length; i++) {
        e.set("data::" + dataKeys[i], data.get(dataKeys[i]));
    }

    post("final_database_order: " + dataKeys.length + " points, " +
         resultingFeaturesArray.length + " features\n");
    outlet(0, "dictionary", e.name);
}
