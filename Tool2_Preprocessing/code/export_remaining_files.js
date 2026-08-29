let dataDict = new Dict("data_dict");
let selDict = new Dict("data_dict_selected");
let remainingDict = new Dict("data_dict_remaining");



function bang() {
    let dataDictKeys = dataDict.getkeys();
    let selDictKeys = selDict.getkeys();
    let remainingDictKeys = [];


    remainingDict.clear();
    if (selDictKeys.length) {
        for (let i = 0; i < dataDictKeys.length; i++) {
            if (selDictKeys.includes(dataDictKeys[i])) {
                //
            } else {
                let tempKey = dataDictKeys[i];
                let tempValue = dataDict.get(tempKey)
                remainingDict.set(tempKey,tempValue);
            }
        }    
    } else {
        post('No selected item. Select by quering the dataset');
    }
    outlet(0, "bang");
}