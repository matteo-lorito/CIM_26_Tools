/*
 * class_analysis_v2.js — histogram of one feature into user-defined classes
 *
 * Changes in v2:
 *   - setFeature n now really selects the column analysed. v1 always used
 *     column 0, because bang() read `featureRenumbered`, which was never updated.
 *   - The lowest boundary is inclusive: a value equal to the first boundary
 *     (e.g. 0) is counted in the first class instead of being skipped.
 *   - Values below the first or above the last boundary are counted and
 *     reported in the Max Console, instead of disappearing silently
 *     (on a standardized dataset, all negative values fell outside 0..30000).
 *   - Guards: empty dict, column index out of range, missing values.
 *
 * Messages: bang | setFeature <column> | setClassBounbdaries <b0 b1 b2 ...>
 * (the misspelled name is kept so the existing patch keeps working;
 *  setClassBoundaries is accepted too)
 * Outlets: 0 = counts per class, 1 = list of all values of the column
 */
outlets = 2;

let myDict = new Dict("data_dict");
let classBoundaries = [0, 500, 1000, 1500, 2000, 3000, 4000, 5000, 10000, 20000, 30000];
let feature = 0;

function bang() {
    let keys = myDict.getkeys();
    if (!keys) { post("class_analysis: data_dict is empty\n"); return; }
    if (!(Array.isArray(keys))) keys = [keys];

    let values = [];
    let classCounter = Array(classBoundaries.length - 1).fill(0);
    let below = 0, above = 0, skipped = 0;
    const lo = classBoundaries[0];
    const hi = classBoundaries[classBoundaries.length - 1];

    for (let i = 0; i < keys.length; i++) {
        let row = myDict.get(keys[i]);
        if (!(Array.isArray(row))) row = [row];
        if (feature < 0 || feature >= row.length) {
            post("class_analysis: feature " + feature + " out of range (0.." + (row.length - 1) + ")\n");
            return;
        }
        let raw = row[feature];
        if (typeof raw !== "number" || !isFinite(raw)) { skipped++; continue; }
        let tempVal = Math.round(raw * 1000) / 1000;
        values.push(tempVal);

        if (tempVal < lo) { below++; continue; }
        if (tempVal > hi) { above++; continue; }
        for (let j = 0; j < classBoundaries.length - 1; j++) {
            // first class includes its lower edge: [b0, b1], then (b1, b2], ...
            let inLow = (j === 0) ? (tempVal >= classBoundaries[0]) : (tempVal > classBoundaries[j]);
            if (inLow && tempVal <= classBoundaries[j + 1]) { classCounter[j]++; break; }
        }
    }
    if (below || above || skipped) {
        post("class_analysis: feature " + feature + ": " + below + " values below " + lo +
             ", " + above + " above " + hi + ", " + skipped + " not numeric (not counted)\n");
    }
    outlet(1, values);
    outlet(0, classCounter);
}

function setClassBounbdaries(...n) {
    let b = n.filter(v => typeof v === "number" && isFinite(v));
    if (b.length < 2) { post("class_analysis: need at least 2 boundaries\n"); return; }
    b.sort((a, c) => a - c);
    classBoundaries = b;
    post("New class boundaries values are: " + classBoundaries.join(" ") + "\n");
}

function setClassBoundaries(...n) { setClassBounbdaries(...n); }

function setFeature(n) {
    feature = Math.max(0, Math.floor(n));
}
