/*
 * export_std_selected_set_v2.js — split results/standardized_dataset.json into the
 * selected samples and the remaining ones.
 *
 * Changes in v2:
 *   - "features" is copied only if the source file has it (v1 wrote an
 *     undefined value when it was missing, e.g. in the standardized set).
 *   - Clear error messages (with newline) when the source file cannot be
 *     read or has no "data" key, instead of a JavaScript exception.
 *   - Selection lookup uses a Set: O(N) instead of O(N x selected).
 *   - Works when the patch path uses backslashes.
 */
let selDictOrig = new Dict("data_dict_selected");

let dataDict = new Dict("tempLoadStd");
let selDict = new Dict("tempSelectedStd");
let remainingDict = new Dict("tempRemainingStd");

function bang() {
    // folder of this patch, then results/
    let patcherPath = String(this.patcher.filepath || "").replace(/\\/g, "/");
    if (!patcherPath) { post("export: save the patch first (its folder is used for results/)\n"); return; }
    let patcherDir = patcherPath.substring(0, patcherPath.lastIndexOf("/"));
    let fullPath = patcherDir + "/results/standardized_dataset.json";

    dataDict.clear();
    dataDict.readany(fullPath);
    let data = dataDict.get("data");
    if (!data || typeof data.getkeys !== "function") {
        post("export: cannot read 'data' from " + fullPath + "\n");
        dataDict.clear();
        return;
    }

    let selKeys = selDictOrig.getkeys();
    if (!selKeys) {
        post("No selected item. Select by querying the dataset\n");
        dataDict.clear();
        return;
    }
    if (!(Array.isArray(selKeys))) selKeys = [selKeys];
    let selected = new Set(selKeys);

    let dataKeys = data.getkeys();
    if (!(Array.isArray(dataKeys))) dataKeys = [dataKeys];
    let tempCols = dataDict.get("cols");
    let tempFeaturesNames = dataDict.get("features");

    selDict.clear();
    remainingDict.clear();
    selDict.set("cols", tempCols);
    remainingDict.set("cols", tempCols);
    if (tempFeaturesNames !== null && tempFeaturesNames !== undefined) {
        selDict.set("features", tempFeaturesNames);
        remainingDict.set("features", tempFeaturesNames);
    }
    selDict.set("data", {});
    remainingDict.set("data", {});

    let nSel = 0, nRem = 0;
    for (let i = 0; i < dataKeys.length; i++) {
        let k = dataKeys[i];
        let v = data.get(k);
        if (selected.has(k)) { selDict.set("data::" + k, v); nSel++; }
        else { remainingDict.set("data::" + k, v); nRem++; }
    }
    if (nSel === 0) post("export: none of the selected keys exist in standardized_dataset.json\n");

    selDict.export_json(patcherDir + "/results/standardized_selection_dataset.json");
    remainingDict.export_json(patcherDir + "/results/standardized_remaining_dataset.json");
    post("export: " + nSel + " selected, " + nRem + " remaining written to results/\n");

    selDict.clear();
    remainingDict.clear();
    dataDict.clear();
}
