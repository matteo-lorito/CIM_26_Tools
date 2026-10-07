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
}

function msg_dictionary(thisDict) {
    let keys = Object.keys(thisDict);
    let samplesNumber = keys.length;
    
    outlet(0, "samples " + samplesNumber);
    outlet(1, resultingFeaturesArray);
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
    outlet(1, resultingUpdatedFeaturesArray);
}
