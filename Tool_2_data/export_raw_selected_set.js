let selDictOrig = new Dict("data_dict_selected");

let dataDict = new Dict("tempLoadRaw");
let selDict = new Dict("tempSelectedRaw");
let remainingDict = new Dict("tempRemainingRaw");


function bang() {
    // file path managing
    let patcherPath = this.patcher.filepath;
    let lastSlash  = patcherPath.lastIndexOf("/");
    let patcherDir = patcherPath.substring(0, lastSlash);
    let fullPath = patcherDir + "/results/raw_dataset.json";
    //post("loading from:", fullPath, "\n");
    
    dataDict.readany(fullPath);
    
    //Dictionaries parsing
    let dataDictKeys = dataDict.get("data").getkeys();
    let selDictOrigKeys = selDictOrig.getkeys();  
    let tempCols = dataDict.get("cols")  
    let tempFeaturesNames  = dataDict.get("features")  
    
    selDict.clear();
    remainingDict.clear();
    
    //Dictionaries template
    selDict.set("cols", tempCols);
    selDict.set("features", tempFeaturesNames);
    selDict.set("data", {});
    
    remainingDict.set("cols", tempCols);
    remainingDict.set("features",tempFeaturesNames);
    remainingDict.set("data", {});
    
    // Dictionaries fill
    if (selDictOrigKeys.length) {
        for (let i = 0; i < dataDictKeys.length; i++) {
            let tempKey = dataDictKeys[i];
            let tempValue = dataDict.get("data").get(tempKey);
            if (selDictOrigKeys.includes(dataDictKeys[i])) {
                selDict.set("data::" + tempKey,tempValue);
            } else {
                remainingDict.set("data::" + tempKey,tempValue);
            }
        }
        selDict.export_json(patcherDir + "/results/raw_selection_dataset.json");
        remainingDict.export_json(patcherDir + "/results/raw_remaining_dataset.json")
    } else {
        post('No selected item. Select by quering the dataset');
    }
    
    selDict.clear();
    remainingDict.clear();
    dataDict.clear();
}