/*
 * export_remaining_files_v2.js — fill data_dict_remaining with every entry of
 * data_dict whose key is NOT in data_dict_selected, then bang.
 *
 * Changes in v2:
 *   - Selection lookup uses a Set (O(N) instead of O(N x selected)).
 *   - Handles single-key dicts (Dict returns a string, not an array).
 *   - Console message ends with a newline.
 * Behaviour kept from v1: with no selection, data_dict_remaining is left
 * empty and the bang is still sent.
 */
let dataDict = new Dict("data_dict");
let selDict = new Dict("data_dict_selected");
let remainingDict = new Dict("data_dict_remaining");

function asArray(k) { return !k ? [] : (Array.isArray(k) ? k : [k]); }

function bang() {
    let dataKeys = asArray(dataDict.getkeys());
    let selKeys = asArray(selDict.getkeys());

    remainingDict.clear();
    if (selKeys.length) {
        let selected = new Set(selKeys);
        for (let i = 0; i < dataKeys.length; i++) {
            if (!selected.has(dataKeys[i])) remainingDict.set(dataKeys[i], dataDict.get(dataKeys[i]));
        }
    } else {
        post("No selected item. Select by querying the dataset\n");
    }
    outlet(0, "bang");
}
