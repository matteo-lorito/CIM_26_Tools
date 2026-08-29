const maxApi = require("max-api");
const fs = require("fs");
const path = require("path");

// Handler for folder creation
maxApi.addHandler("create", (...args) => {
    const folderPath = args.join(" ");
    const resolved = path.resolve(folderPath);

    if (!fs.existsSync(resolved)) {
        fs.mkdirSync(resolved, { recursive: true });
        maxApi.outlet("created", resolved);
    } else {
        maxApi.outlet("exists", resolved);
    }
});

// Handler for cleanup — deletes the folder only if empty
maxApi.addHandler("cleanup", (...args) => {
    const folderPath = args.join(" ");
    const resolved = path.resolve(folderPath);

    // If the folder doesn't exist, nothing to do
    if (!fs.existsSync(resolved)) {
        maxApi.outlet("not_found", resolved);
        return;
    }

    // Read the folder contents, ignoring hidden files like .DS_Store
    const contents = fs.readdirSync(resolved).filter((filename) => {
        return !filename.startsWith(".");
    });

    if (contents.length === 0) {
        fs.rmSync(resolved, { recursive: true });
        maxApi.outlet("deleted", resolved);
    } else {
        maxApi.outlet("not_empty", contents.length, resolved);
    }
});