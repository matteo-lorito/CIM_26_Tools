/*
 * chroma_salience_v2.js — per-sample circular pitch salience from chroma
 *
 * v1 was the code embedded in the [v8 @embed 1] object in [p process].
 * To use this file: change that object to [v8 chroma_salience_v2.js].
 *
 * Input buffer  temp_dataset_6_buffy : frames = samples, channels = chroma bins
 * Output buffer max_chroma_val       : one value per sample (channel 1)
 *
 * Changes in v2:
 *   - Silent / all-zero chroma now gives 0 (a number). v1 returned the object
 *     {value: NaN, valid: false}, which was written into the buffer
 *     together with the real values.
 *   - The output buffer is resized to the number of samples before writing.
 *     v1 relied on [buffer~ max_chroma_val @samps 1070], so corpora with more
 *     than 1070 samples lost the values past 1070.
 *   - Negative bin values (should not occur in chroma) count as 0.
 *   - Reads each chroma channel with one peek call instead of one call per
 *     value (12 calls instead of 12 x N).
 */
inlets = 1;
outlets = 2;

let my_buf = new Buffer("temp_dataset_6_buffy");
let res_buf = new Buffer("max_chroma_val");

function postBufferData() {
    post("The buffer samples are: " + my_buf.framecount() + "\n");
    post("The buffer channels are: " + my_buf.channelcount() + "\n");
}

function bang() {
    const bufChannels = my_buf.channelcount();
    const bufFrames = my_buf.framecount();
    if (!(bufFrames > 0) || !(bufChannels > 0)) {
        post("chroma_salience: buffer temp_dataset_6_buffy is empty\n");
        return;
    }

    // one array per chroma bin, each with one value per sample
    const channels = [];
    for (let c = 1; c <= bufChannels; c++) {
        let col = my_buf.peek(c, 0, bufFrames);
        channels.push(typeof col === "number" ? [col] : col);
    }

    const result = new Array(bufFrames);
    let silent = 0;
    for (let i = 0; i < bufFrames; i++) {
        const bins = new Array(bufChannels);
        for (let c = 0; c < bufChannels; c++) bins[c] = channels[c][i];
        const r = pitchSalienceCircular(bins);
        if (r === null) { silent++; result[i] = 0; } else result[i] = r;
    }
    if (silent) post("chroma_salience: " + silent + " sample(s) with all-zero chroma set to 0\n");

    // make the output buffer exactly one value per sample
    if (res_buf.framecount() !== bufFrames) res_buf.send("sizeinsamps", bufFrames);
    res_buf.poke(1, 0, result);
    outlet(0, "bang");
}

/**
 * Circular concentration of a chroma vector: treat the 12 bins as angles on
 * a circle, weight them by their normalized energy, and return the length
 * of the mean vector (0 = energy spread evenly, 1 = all energy in one bin).
 * Returns null for an all-zero (silent) vector.
 */
function pitchSalienceCircular(medians) {
    const EPS = 1e-12;
    let sum = 0;
    for (let k = 0; k < medians.length; k++) sum += (medians[k] > 0 ? medians[k] : 0);
    if (!(sum > 0)) return null;
    const tau = 2 * Math.PI / medians.length;
    let x = 0, y = 0;
    for (let k = 0; k < medians.length; k++) {
        const pk = (medians[k] > 0 ? medians[k] : 0) / (sum + EPS);
        x += pk * Math.cos(tau * k);
        y += pk * Math.sin(tau * k);
    }
    return Math.hypot(x, y);
}
pitchSalienceCircular.local = 1;
