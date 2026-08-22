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

function features_array(...n) {
   
    resultingFeaturesArray = [];
    originalFeaturesArray = n;
    
    for (let i = 0; i < originalFeaturesArray.length; i++ ) {
        if (originalFeaturesArray[i] === 1) {
            resultingFeaturesArray.push(featuresList[i]);
        }
    }
    outlet(0, resultingFeaturesArray);
    outlet(1, resultingFeaturesArray.length);
    
}

function featuresDroppingUpdate(...n) {
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
