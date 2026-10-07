/*
 * features_for_ui_standardization_v2.js — feature names and count for the
 * standardization checkboxes.
 *
 * Changes in v2:
 *   - New message "load_params [path]": reads the feature list from
 *     results/corpus_processed_params.json, i.e. from the file that was
 *     actually committed, and outputs names + count exactly like
 *     features_array does. This works in every situation, including a
 *     dataset loaded from disk with no analysis in this session (where
 *     features_array / select_feature is never sent and the checkboxes
 *     did not update).
 *     Without a path it uses <folder of this patch>/results/.
 *     It also reads "cols" from corpus_processed.json and, if the two
 *     disagree, trusts cols and says so in the Max Console.
 *   - New message "set_features <name1> <name2> ...": same output from a
 *     plain list of names.
 *   - featuresDroppingUpdate no longer outputs an empty list when
 *     features_array was never received: it warns instead.
 *
 * Unchanged: features_array <11 flags>, featuresDroppingUpdate <mask>.
 * Outlets: 0 = list of labels ("1-Name\n" ...), 1 = number of features.
 */
outlets = 2;

const featuresList = [
        "1-Centroid\n",
        "2-Rolloff\n",
        "3-Crest\n",
        "4-Loudness range\n",
        "5-Amplitude\n",
        "6-Spectral tilt\n",
        "7-Spectral Flux\n",
        "8-Harmonic-to-Noise ratio\n",
        "9-Pitch Salience\n",
        "10-MFCC_5\n",
        "11-Duration (ms)\n"
];
let resultingFeaturesArray = [];
let originalFeaturesArray = Array(11);
let haveAnalysisFlags = false;

function features_array(...n) {
    resultingFeaturesArray = [];
    originalFeaturesArray = n;
    haveAnalysisFlags = true;

    for (let i = 0; i < originalFeaturesArray.length; i++ ) {
        if (originalFeaturesArray[i] === 1) {
            resultingFeaturesArray.push(featuresList[i]);
        }
    }
    outlet(0, resultingFeaturesArray);
    outlet(1, resultingFeaturesArray.length);
}

function featuresDroppingUpdate(...n) {
    if (!haveAnalysisFlags) {
        post("features_for_ui: feature mask received but no analysis flags in this session;\n" +
             "  send 'load_params' after Import preprocessed to read the features from the file\n");
        return;
    }
    let featuresDroppingArray = n;
    let positionInMask = 0;
    let updatedFaturesArray = [];
    let resultingUpdatedFeaturesArray = [];

    for (let i = 0; i < originalFeaturesArray.length; i++) {
        if (originalFeaturesArray[i] === 1) {
            updatedFaturesArray[i] = featuresDroppingArray[positionInMask];
            positionInMask++;
        }
    }

    for (let i = 0; i < updatedFaturesArray.length; i++ ) {
        if (updatedFaturesArray[i] === 1) {
            resultingUpdatedFeaturesArray.push(featuresList[i]);
        }
    }
    outlet(0, resultingUpdatedFeaturesArray);
    outlet(1, resultingUpdatedFeaturesArray.length);
}

/** Output a list of feature names in the same "N-Name\n" format as features_array. */
function emitNames(names) {
    const labels = names.map((n, i) => (i + 1) + "-" + String(n).replace(/_/g, " ") + "\n");
    resultingFeaturesArray = labels;
    outlet(0, labels);
    outlet(1, labels.length);
}

function set_features(...names) {
    if (names.length === 0) { post("features_for_ui: set_features needs at least one name\n"); return; }
    emitNames(names);
}

function resultsDir(patcher) {
    const fp = String((patcher && patcher.filepath) || "").replace(/\\/g, "/");
    if (!fp) return null;
    return fp.substring(0, fp.lastIndexOf("/")) + "/results";
}

function load_params(...args) {
    let paramsPath, corpusPath;
    if (args.length > 0) {
        paramsPath = args.join(" ");
        corpusPath = paramsPath.replace(/_params\.json$/i, ".json");
    } else {
        const dir = resultsDir(this.patcher);
        if (!dir) { post("features_for_ui: save the patch first (its folder is used for results/)\n"); return; }
        paramsPath = dir + "/corpus_processed_params.json";
        corpusPath = dir + "/corpus_processed.json";
    }

    const d = new Dict();
    d.readany(paramsPath);
    let names = d.get("feature_names_output");
    d.clear();
    if (names === null || names === undefined) {
        post("features_for_ui: no feature_names_output in " + paramsPath + "\n");
        names = [];
    }
    if (!Array.isArray(names)) names = [names];   // Dict returns a 1-item list as a single value

    // cross-check with the number of columns really written in the corpus file
    const c = new Dict();
    c.readany(corpusPath);
    const cols = c.get("cols");
    c.clear();
    if (typeof cols === "number" && cols !== names.length) {
        post("features_for_ui: params lists " + names.length + " features but " +
             corpusPath + " has " + cols + " columns; using " + cols + "\n");
        const fixed = [];
        for (let i = 0; i < cols; i++) fixed.push(i < names.length ? names[i] : "feature_" + i);
        names = fixed;
    }
    if (names.length === 0) { post("features_for_ui: nothing to show\n"); return; }
    emitNames(names);
}
