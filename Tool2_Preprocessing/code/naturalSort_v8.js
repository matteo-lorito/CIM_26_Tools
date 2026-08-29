

autowatch = 1;


// ─────────────────────────────────────────────────────────────
//  NATURAL SORT KEY
// ─────────────────────────────────────────────────────────────
/*
    extractSortKey(filepath)
    
    Given a full path like "/Users/.../myFolder/chunk1000.wav",
    this function:
    
    1) Extracts just the filename: "chunk1000.wav"
       → by finding everything after the last "/"
    
    2) Removes the extension: "chunk1000"
       → by cutting at the last "."
    
    3) Converts to lowercase: "chunk1000"
       → for case-insensitive comparison (Finder is case-insensitive)
    
    4) Splits into alternating text/number segments: ["chunk", 1000]
       → numbers become actual JavaScript Number values
       → text stays as strings
    
    DETAILED EXAMPLE with a harder case:
    
        filepath: "/path/to/A3_take2_v10.wav"
        
        Step 1 → "A3_take2_v10.wav"
        Step 2 → "A3_take2_v10"
        Step 3 → "a3_take2_v10"
        Step 4 → split on digit boundaries using regex
        
        The regex /(\d+)/ with split produces:
            ["a", "3", "_take", "2", "_v", "10"]
        
        Then we convert digit-only segments to numbers:
            ["a", 3, "_take", 2, "_v", 10]
        
        This key means:
        - First compare "a" vs "a" (equal)
        - Then compare 3 vs 3 (equal)  
        - Then "_take" vs "_take" (equal)
        - Then 2 vs 2 (equal)
        - Then "_v" vs "_v" (equal)
        - Then 10 vs 9 → 10 > 9, so "v10" comes AFTER "v9"
        
        Which is exactly what Finder does!
*/
function extractSortKey(filepath) {
    // Step 1: isolate filename from full path
    var lastSlash = filepath.lastIndexOf("/");
    var filename;
    if (lastSlash >= 0) {
        filename = filepath.substring(lastSlash + 1);
    } else {
        filename = filepath;
    }
    
    // Step 2: remove file extension
    var lastDot = filename.lastIndexOf(".");
    if (lastDot > 0) {
        filename = filename.substring(0, lastDot);
    }
    
    // Step 3: lowercase for case-insensitive sorting
    filename = filename.toLowerCase();
    
    // Step 4: split into text and number segments
    //
    // How the regex split works:
    //   "chunk1000"  .split(/(\d+)/)  →  ["chunk", "1000", ""]
    //   "a3_take2"   .split(/(\d+)/)  →  ["a", "3", "_take", "2", ""]
    //   "noNumbers"  .split(/(\d+)/)  →  ["nonumbers"]
    //
    // The parentheses in /(\d+)/ are a "capture group", which tells
    // split() to KEEP the matched digits in the output array.
    // Without parentheses, /\d+/, the digits would be discarded.
    
    var parts = filename.split(/(\d+)/);
    var key = [];
    
    for (var i = 0; i < parts.length; i++) {
        var segment = parts[i];
        if (segment === "" || segment === undefined) continue;
        
        // Is this segment purely digits?
        if (/^\d+$/.test(segment)) {
            // Store as a number so comparison is numeric
            // parseInt("0042") → 42, which is correct:
            // leading zeros don't affect numeric value
            key.push(parseInt(segment, 10));
        } else {
            // Store as string for alphabetical comparison
            key.push(segment);
        }
    }
    
    return key;
}


// ─────────────────────────────────────────────────────────────
//  COMPARATOR
// ─────────────────────────────────────────────────────────────
/*
    compareNatural(entryA, entryB)
    
    Standard JavaScript sort comparator that uses pre-computed
    sort keys. Returns negative if A should come first,
    positive if B should come first, zero if equal.
    
    The comparison walks through the key arrays element by element:
    
    Case 1: Both elements are numbers
        → subtract: (3 - 10) = -7 → 3 comes first ✓
        → This is what fixes "chunk100" vs "chunk1000"
    
    Case 2: Both elements are strings  
        → standard alphabetical: "apple" < "banana"
        → This handles purely alphabetical filenames
    
    Case 3: One is a number, one is a string
        → numbers sort before strings (arbitrary but consistent)
        → e.g., "2fast" → [2, "fast"] would sort before "abc" → ["abc"]
    
    Case 4: Keys of different lengths, all matching so far
        → shorter key comes first
        → e.g., "chunk" sorts before "chunk1"
*/
function compareNatural(entryA, entryB) {
    var keyA = entryA.sortKey;
    var keyB = entryB.sortKey;
    
    // Compare element by element up to the shorter key length
    var minLen = keyA.length < keyB.length ? keyA.length : keyB.length;
    
    for (var i = 0; i < minLen; i++) {
        var a = keyA[i];
        var b = keyB[i];
        
        var aIsNum = (typeof a === "number");
        var bIsNum = (typeof b === "number");
        
        if (aIsNum && bIsNum) {
            // Both numbers → numeric comparison
            if (a !== b) return a - b;
        } else if (!aIsNum && !bIsNum) {
            // Both strings → alphabetical comparison
            if (a < b) return -1;
            if (a > b) return 1;
        } else {
            // Mixed types → numbers come first
            return aIsNum ? -1 : 1;
        }
    }
    
    // All compared elements were equal →
    // shorter key is "less than" longer key
    return keyA.length - keyB.length;
}


// ─────────────────────────────────────────────────────────────
//  MAIN ENTRY POINT — called by [prepend naturalSort]
// ─────────────────────────────────────────────────────────────
/*
    naturalSort(...paths)
    
    This function is called by Max when a message starting with
    "naturalSort" arrives at the v8 object's inlet.
    
    The [prepend naturalSort] object upstream adds this function name
    to the front of the file list coming from fluid.audiofilesin.
    
    So if fluid.audiofilesin outputs:
        /path/chunk002.wav /path/chunk001.wav /path/chunk010.wav
    
    After [prepend naturalSort], v8 receives:
        naturalSort /path/chunk002.wav /path/chunk001.wav /path/chunk010.wav
    
    Which calls this function with three arguments.
    
    PROCESSING STEPS:
    1. Wrap each path in an object with its sort key
    2. Sort the array using the natural comparator
    3. Extract just the sorted paths
    4. Output the sorted list via outlet(0)
    
    The output goes to [t l l], which sends it to:
    - [listfunnel 1]: assigns sequential indices 1, 2, 3, ...
    - [zl.len]: counts total number of files
    
    Since listfunnel assigns indices based on LIST POSITION,
    and we've now sorted the list correctly, the indices
    will match the natural filename order.
*/
function naturalSort() {
    // Collect all arguments into an array
    // In v8, function arguments from Max messages arrive as
    // individual parameters. We use the rest-style arguments object.
    var paths = [];
    for (var i = 0; i < arguments.length; i++) {
        paths.push(arguments[i].toString());
    }
    
    if (paths.length === 0) {
        post("naturalSort: received empty list, nothing to sort\n");
        return;
    }
    
    post("naturalSort: sorting " + paths.length + " files...\n");
    
    // Step 1: wrap each path with its pre-computed sort key
    // Pre-computing avoids redundant parsing during sort.
    // With 1700 files, sort does ~1700 × log2(1700) ≈ 18,400 comparisons.
    // Without pre-computation, we'd parse filenames ~36,800 times
    // instead of 1,700 times.
    var entries = [];
    for (var j = 0; j < paths.length; j++) {
        entries.push({
            path: paths[j],
            sortKey: extractSortKey(paths[j])
        });
    }
    
    // Step 2: sort using natural comparison
    entries.sort(compareNatural);
    
    // Step 3: extract sorted paths back into a flat array
    var sortedPaths = [];
    for (var k = 0; k < entries.length; k++) {
        sortedPaths.push(entries[k].path);
    }
    
    // Step 4: output the sorted list
    // outlet() with an array sends it as a Max list message,
    // which is exactly what [t l l] expects downstream.
    outlet(0, sortedPaths);
    
    post("naturalSort: done. " + paths.length + " files in natural order.\n");
}


// ─────────────────────────────────────────────────────────────
//  ALTERNATIVE ENTRY: direct list via inlet
// ─────────────────────────────────────────────────────────────
/*
    If you prefer to send the list directly without [prepend],
    you can use a [list] message. This handler catches plain lists.
    Uncomment the block below if needed.
*/
/*
function list() {
    var args = arrayfromargs(arguments);
    naturalSort.apply(null, args);
}
*/
