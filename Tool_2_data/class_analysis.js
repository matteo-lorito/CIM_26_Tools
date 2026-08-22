outlets = 2;

let myDict = new Dict("data_dict");
let classBoundaries = [0, 500, 1000, 1500, 2000, 3000, 4000, 5000, 10000, 20000, 30000];
let feature = 0;
let featureRenumbered = 0;
let featuresDroppedArray = [];
let featureRenumberedArray = [];
	
function bang() {
    let keys = myDict.getkeys();
    let values = [];
    let classCounter = Array(classBoundaries.length - 1).fill(0);
    
    
    for (let i = 0; i < keys.length; i++) {
        let tempKey = keys[i]
        let tempVal = Math.round(myDict.get(tempKey)[featureRenumbered] * 1000) / 1000;  
        //post(tempVal); 
        values.push(tempVal);  
         
        for (let j = 0; j < classBoundaries.length - 1; j++) {
            if ((tempVal > classBoundaries[j]) && (tempVal <= classBoundaries[j + 1])) {
                classCounter[j]++;
            }
        }
    }
	outlet(1, values);
    outlet(0, classCounter);

}

/*
function featuresDroppingUpdate(...n) {
    featuresDroppedArray = n;
        if (featuresDroppedArray.length) {
            let counterDrop = 0;
            for (let i = 0; i < featuresDroppedArray.length; i++){
                if (featuresDroppedArray[i] === 0) {
                    counterDrop++;
                }
                featureRenumberedArray.push(i + counterDrop)
            }
        } else {
            featureRenumberedArray = feature;
        }
}
*/
function setClassBounbdaries(...n) {
    classBoundaries = n;
    post('New class boundaries values are: ', classBoundaries, '\n');
}

function setFeature(n) {
    feature = n;
   //featureRenumbered = featureRenumberedArray[feature];
}