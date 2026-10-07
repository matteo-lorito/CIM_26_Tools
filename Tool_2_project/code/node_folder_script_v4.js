/*
 * node_folder_script_v4.js — folder helper for Tool_2 (Node for Max)
 *
 * Changes in v4 (Max project layout):
 *   - In a Max project the script lives in <project>/code/ but the patch lives
 *     in <project>/patchers/, and the patch builds every path from its own
 *     folder ([thispatcher] path). v4 therefore creates "results" next to the
 *     PATCH: if this script is inside a folder named "code" that has a sibling
 *     "patchers" folder, results goes to <project>/patchers/results;
 *     otherwise (flat folder, script next to the patch) it stays next to the
 *     script, exactly as in v3. No wiring change is needed in the patch.
 *
 * Changes in v3:
 *   - New message "ensure <tag> <folder>": creates the folder if needed and
 *     ALWAYS answers "ready <tag> <folder>" (or "error <tag> <folder>"), so the
 *     patch can start an export only once its destination folder exists.
 *     Example: "ensure selected /Users/me/audio/selected/"
 *              -> "ready selected /Users/me/audio/selected"
 *     The tag (e.g. selected / remaining) tells the patch which export to run.
 *
 * Changes in v2:
 *   - On start, creates the "results" folder next to this script (which is
 *     also the folder of the patch), so the user never has to create it.
 *     No message or delay is needed from Max: [loadbang] -> [script start]
 *     is enough. Sends "results_ready <path>" from the left outlet.
 *   - New message "results <folder>": creates <folder>/results. Use it if the
 *     script is ever moved away from the patch (e.g. into a project "code"
 *     folder), sending the patch folder from [value folder_path].
 *   - "cleanup" never deletes the results folder.
 *   - Errors (no permission, a FILE named "results" already there, …) are
 *     reported with an "error" message instead of stopping the script.
 *
 * Messages kept from v1:
 *   create <folder>   create the folder (and any missing parents)
 *   cleanup <folder>  delete the folder only if it is empty (hidden files ignored)
 */
const maxApi = require("max-api");
const fs = require("fs");
const path = require("path");

const RESULTS_NAME = "results";

/** Join the atoms of a Max message back into one path (paths may contain spaces). */
function argsToPath(args) {
    return path.resolve(args.join(" "));
}

/** Make sure <baseDir>/results exists; report what happened. */
function ensureResults(baseDir) {
    const target = path.join(baseDir, RESULTS_NAME);
    try {
        if (fs.existsSync(target)) {
            if (!fs.statSync(target).isDirectory()) {
                maxApi.post(`Error: ${target} exists but is a file, not a folder`, maxApi.POST_LEVELS.ERROR);
                maxApi.outlet("error", "results_is_a_file", target);
                return;
            }
        } else {
            fs.mkdirSync(target, { recursive: true });
            maxApi.post(`Created ${target}`);
        }
        maxApi.outlet("results_ready", target);
    } catch (e) {
        maxApi.post(`Error: could not create ${target}: ${e.message}`, maxApi.POST_LEVELS.ERROR);
        maxApi.outlet("error", "results_not_created", target);
    }
}

/** Folder of the patch: <project>/patchers in a Max project, else this folder. */
function patchFolder() {
    if (path.basename(__dirname) === "code") {
        const patchers = path.join(path.dirname(__dirname), "patchers");
        if (fs.existsSync(patchers) && fs.statSync(patchers).isDirectory()) return patchers;
    }
    return __dirname;
}

// ── runs once, as soon as Max starts the script ──
ensureResults(patchFolder());

// results <folder> : create <folder>/results explicitly
maxApi.addHandler("results", (...args) => {
    if (args.length === 0) { ensureResults(patchFolder()); return; }
    ensureResults(argsToPath(args));
});

// create <folder>
maxApi.addHandler("create", (...args) => {
    const resolved = argsToPath(args);
    try {
        if (!fs.existsSync(resolved)) {
            fs.mkdirSync(resolved, { recursive: true });
            maxApi.outlet("created", resolved);
        } else {
            maxApi.outlet("exists", resolved);
        }
    } catch (e) {
        maxApi.post(`Error: could not create ${resolved}: ${e.message}`, maxApi.POST_LEVELS.ERROR);
        maxApi.outlet("error", "create_failed", resolved);
    }
});

// ensure <tag> <folder> : create if needed, then always answer ready/error with the tag
maxApi.addHandler("ensure", (tag, ...rest) => {
    if (tag === undefined || rest.length === 0) {
        maxApi.post("Usage: ensure <tag> <folder>", maxApi.POST_LEVELS.ERROR);
        return;
    }
    const resolved = argsToPath(rest);
    try {
        if (fs.existsSync(resolved) && !fs.statSync(resolved).isDirectory()) {
            throw new Error("a file with this name already exists");
        }
        fs.mkdirSync(resolved, { recursive: true });   // no-op if it already exists
        maxApi.outlet("ready", String(tag), resolved);
    } catch (e) {
        maxApi.post(`Error: could not prepare ${resolved}: ${e.message}`, maxApi.POST_LEVELS.ERROR);
        maxApi.outlet("error", String(tag), resolved);
    }
});

// cleanup <folder> : delete only if empty, and never the results folder
maxApi.addHandler("cleanup", (...args) => {
    const resolved = argsToPath(args);
    if (path.basename(resolved) === RESULTS_NAME) {
        maxApi.outlet("kept", resolved);
        return;
    }
    try {
        if (!fs.existsSync(resolved)) {
            maxApi.outlet("not_found", resolved);
            return;
        }
        const contents = fs.readdirSync(resolved).filter((name) => !name.startsWith("."));
        if (contents.length === 0) {
            fs.rmSync(resolved, { recursive: true });
            maxApi.outlet("deleted", resolved);
        } else {
            maxApi.outlet("not_empty", contents.length, resolved);
        }
    } catch (e) {
        maxApi.post(`Error: cleanup of ${resolved} failed: ${e.message}`, maxApi.POST_LEVELS.ERROR);
        maxApi.outlet("error", "cleanup_failed", resolved);
    }
});
