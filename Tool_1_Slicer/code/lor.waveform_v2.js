/*
 * lor.waveform_v2.js — fast waveform + editable markers display for v8ui
 *
 * Rewrite of lor.waveform.js (itself based on fluid.waveform~ by the FluCoMa
 * project, https://github.com/flucoma/fluid.waveform, BSD 3-Clause License,
 * Copyright (c) University of Huddersfield). The message interface used by
 * Tool_1 is unchanged; the drawing engine is new and no longer needs fav-max.
 *
 * WHAT CHANGED AND WHY
 *  1. The audio buffer is never copied whole into JavaScript. It is read in
 *     chunks of CHUNK frames and reduced on the fly to min/max "peaks" of
 *     BASE frames each (level 0), then merged into coarser levels
 *     (x8, x64, x512). For a 292 s stereo file: 25.8 M values read once,
 *     ~1.8 MB kept, instead of ~200 MB kept and re-read on every refresh.
 *  2. The overview is built in small time slices (BUILD_BUDGET_MS) by a Task,
 *     so the patch and the UI stay responsive while a long file is analysed.
 *  3. Drawing uses the level that gives roughly one bin per pixel, and draws
 *     one filled shape per channel: ~2 x width points instead of ~400,000.
 *  4. Markers (slices) are kept separate: adding, moving, hovering or
 *     reloading markers never touches the waveform data, and the waveform
 *     picture is cached and only re-rendered when zoom/offset/size/colours or
 *     the audio change. Markers are drawn on top of the cached picture.
 *  5. No forced garbage collection (gc()) on every paint.
 *
 * MESSAGES (inlet 0)
 *  waveform <buffer> [colorname | r g b a]   add/replace an audio layer
 *  buffer <buffer>                            same as waveform
 *  slices | markers | indicesbuffer <indices-buffer> <reference-buffer | samplerate>
 *  getmarkers                                 -> outlet 2: markers <positions in samples>
 *  clear                                      remove everything
 *  refresh                                    rebuild overview + reload markers
 *  remove <name>, getlayers, color <name> r g b a, selcolor <name> r g b a, bgcolor r g b a
 *  zoom <0..1>, offset <0..1>                 attributes (visible fraction / start)
 *  verbose <0|1>                              post timing information
 *
 * MOUSE
 *  hover near a marker : highlight            drag highlighted marker : move it
 *  shift + click       : add marker           shift + cmd/ctrl + click : delete highlighted
 *  double-click        : outlet 2 region <start 0..1> <end 0..1> between markers
 *  wheel               : zoom around mouse    shift + wheel : scroll
 *
 * OUTLETS
 *  0: layers / position      1: (unused)
 *  2: markers / region       3: zoom / offset / zoom_offset
 */

inlets = 1;
outlets = 4;

mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;

// ---------------------------------------------------------------- settings
var BASE = 128;             // frames per bin at the finest overview level
var FACTOR = 8;             // each coarser level merges FACTOR bins
var NLEVELS = 4;            // 128, 1024, 8192, 65536 frames per bin
var CHUNK = 16384;          // frames read per peek (multiple of BASE)
var BUILD_BUDGET_MS = 12;   // max time spent building per Task tick
var BUILD_INTERVAL_MS = 4;  // pause between ticks (lets Max breathe)
var PROGRESS_REDRAW_MS = 120;
var HIT_TOLERANCE_PX = 4;   // how close the mouse must be to grab a marker

// ---------------------------------------------------------------- state
var backgroundcolor = [0.254902, 0.254902, 0.254902, 1.0];
var DEFAULT_WAVE_COLOR = [1.0, 0.467, 0.169, 1.0];
var DEFAULT_MARKER_COLOR = [1.0, 1.0, 0.0, 1.0];
var DEFAULT_MARKER_SEL_COLOR = [1.0, 0.345098, 0.298039, 1.0];

var waveLayers = [];        // see newWaveLayer()
var markerLayer = null;     // see newMarkerLayer()

var zoom = 1.0;
var offset = 0.0;
var verboseOn = 0;

var waveImg = null;         // cached picture of background + waveforms
var waveDirty = true;
var lastW = -1, lastH = -1;
var lastProgressDraw = 0;

var hover = -1;             // index of highlighted marker, -1 = none
var dragIndex = -1;         // index of marker being dragged, -1 = none

var buildTask = new Task(buildStep, this);

declareattribute("zoom", "getzoom", "setzoom");
declareattribute("offset", "getoffset", "setoffset");

// ================================================================= helpers
function err(msg) { error("lor.waveform_v2: " + msg + "\n"); }
err.local = 1;

function log(msg) { if (verboseOn) post("lor.waveform_v2: " + msg + "\n"); }
log.local = 1;

function boxSize()
{
    var r = box.rect;
    return [Math.max(1, Math.round(r[2] - r[0])), Math.max(1, Math.round(r[3] - r[1]))];
}
boxSize.local = 1;

function clamp(v, lo, hi) { return v < lo ? lo : (v > hi ? hi : v); }
clamp.local = 1;

// effective start of the visible window (fraction 0..1)
function visOffset() { return Math.min(offset, 1 - zoom); }
visOffset.local = 1;

function bufInfo(name)
{
    if (typeof name !== "string") return null;
    var b = new Buffer(name);
    var frames = b.framecount();
    if (frames === undefined || frames < 0) return null;   // buffer does not exist
    return { buf: b, frames: frames, chans: b.channelcount() };
}
bufInfo.local = 1;

function peekArray(b, chan1, start, count)
{
    var s = b.peek(chan1, start, count);
    if (typeof s === "number") return [s];
    return s || [];
}
peekArray.local = 1;

function requestWaveRedraw()
{
    waveDirty = true;
    mgraphics.redraw();
}
requestWaveRedraw.local = 1;

// total length (in frames) that the horizontal axis represents
function extentFrames()
{
    if (waveLayers.length > 0) return waveLayers[0].frames;
    if (markerLayer) return markerLayer.extent;
    return 0;
}
extentFrames.local = 1;

// ================================================================= attributes
function getzoom() { return zoom; }
function getoffset() { return offset; }

function setzoom(v)
{
    zoom = clamp(+v, 0.000001, 1.0);
    requestWaveRedraw();
}

function setoffset(v)
{
    offset = clamp(+v, 0.0, 1.0);
    requestWaveRedraw();
}

// ================================================================= waveform layers
function newWaveLayer(name)
{
    return {
        name: name,
        color: DEFAULT_WAVE_COLOR.slice(),
        frames: 0,
        chans: 0,
        levels: [],         // levels[L][chan] = { min: Float32Array, max: Float32Array }
        nextChan: 0,        // build cursor
        nextFrame: 0,
        complete: false,
        t0: 0
    };
}
newWaveLayer.local = 1;

function findWave(name)
{
    for (var i = 0; i < waveLayers.length; i++)
        if (waveLayers[i].name === name) return i;
    if (/^\d+$/.test(String(name))) {
        var n = parseInt(name, 10);
        if (n >= 0 && n < waveLayers.length) return n;
    }
    return -1;
}
findWave.local = 1;

// allocate level-0 arrays and reset the build cursor
function startBuild(layer)
{
    var info = bufInfo(layer.name);
    if (!info) { err('buffer "' + layer.name + '" does not exist'); return false; }
    if (info.frames < 1) { err('buffer "' + layer.name + '" is empty'); return false; }

    layer.frames = info.frames;
    layer.chans = info.chans;
    var nBins = Math.ceil(info.frames / BASE);
    var lvl0 = [];
    for (var c = 0; c < info.chans; c++)
        lvl0.push({ min: new Float32Array(nBins), max: new Float32Array(nBins) });
    layer.levels = [lvl0];
    layer.nextChan = 0;
    layer.nextFrame = 0;
    layer.complete = false;
    layer.t0 = Date.now();
    return true;
}
startBuild.local = 1;

// build coarser levels from level 0 (cheap: works on bins, not samples)
function buildCoarseLevels(layer)
{
    for (var L = 1; L < NLEVELS; L++) {
        var prev = layer.levels[L - 1];
        var nPrev = prev[0].min.length;
        var n = Math.ceil(nPrev / FACTOR);
        var lvl = [];
        for (var c = 0; c < layer.chans; c++) {
            var pmn = prev[c].min, pmx = prev[c].max;
            var mn = new Float32Array(n), mx = new Float32Array(n);
            for (var i = 0; i < n; i++) {
                var j0 = i * FACTOR, j1 = Math.min(nPrev, j0 + FACTOR);
                var lo = pmn[j0], hi = pmx[j0];
                for (var j = j0 + 1; j < j1; j++) {
                    if (pmn[j] < lo) lo = pmn[j];
                    if (pmx[j] > hi) hi = pmx[j];
                }
                mn[i] = lo; mx[i] = hi;
            }
            lvl.push({ min: mn, max: mx });
        }
        layer.levels.push(lvl);
    }
}
buildCoarseLevels.local = 1;

// process one CHUNK of one channel; returns true when the layer is finished
function buildChunk(layer, b)
{
    var c = layer.nextChan;
    var start = layer.nextFrame;
    var n = Math.min(CHUNK, layer.frames - start);
    var s = peekArray(b, c + 1, start, n);
    var mn = layer.levels[0][c].min, mx = layer.levels[0][c].max;

    // start is a multiple of CHUNK, and CHUNK a multiple of BASE,
    // so a new bin begins exactly when (start + i) % BASE === 0
    var bin = (start / BASE) | 0;
    var k = 0;
    for (var i = 0; i < n; i++) {
        var v = s[i];
        if (k === 0) { mn[bin] = v; mx[bin] = v; }
        else {
            if (v < mn[bin]) mn[bin] = v;
            if (v > mx[bin]) mx[bin] = v;
        }
        if (++k === BASE) { k = 0; bin++; }
    }

    layer.nextFrame += n;
    if (layer.nextFrame >= layer.frames) {
        layer.nextFrame = 0;
        layer.nextChan++;
        if (layer.nextChan >= layer.chans) {
            buildCoarseLevels(layer);
            layer.complete = true;
            log('overview of "' + layer.name + '" (' + layer.frames + " frames x " +
                layer.chans + " ch) built in " + (Date.now() - layer.t0) + " ms");
            return true;
        }
    }
    return false;
}
buildChunk.local = 1;

// Task callback: work for at most BUILD_BUDGET_MS, then reschedule
function buildStep()
{
    var t0 = Date.now();
    var pending = false;

    for (var i = 0; i < waveLayers.length; i++) {
        var layer = waveLayers[i];
        if (layer.complete) continue;

        var info = bufInfo(layer.name);
        // buffer vanished or changed size while building: start again
        if (!info || info.frames !== layer.frames || info.chans !== layer.chans) {
            if (!startBuild(layer)) { waveLayers.splice(i, 1); i--; continue; }
            info = bufInfo(layer.name);
        }
        while (!layer.complete && (Date.now() - t0) < BUILD_BUDGET_MS)
            buildChunk(layer, info.buf);

        if (!layer.complete) { pending = true; break; }
        requestWaveRedraw();
    }

    if (pending) {
        var now = Date.now();
        if (now - lastProgressDraw > PROGRESS_REDRAW_MS) {
            lastProgressDraw = now;
            requestWaveRedraw();
        }
        buildTask.schedule(BUILD_INTERVAL_MS);
    } else {
        requestWaveRedraw();
    }
}

function kickBuild()
{
    buildTask.cancel();
    buildTask.schedule(0);
}
kickBuild.local = 1;

function buildProgress()
{
    var done = 0, total = 0;
    waveLayers.forEach(function (l) {
        total += l.frames * l.chans;
        done += l.complete ? l.frames * l.chans : (l.nextChan * l.frames + l.nextFrame);
    });
    return total > 0 ? done / total : 1;
}
buildProgress.local = 1;

function anyBuilding()
{
    for (var i = 0; i < waveLayers.length; i++)
        if (!waveLayers[i].complete) return true;
    return false;
}
anyBuilding.local = 1;

function parseColor(args)
{
    var named = {
        red: [1, 0, 0, 1], green: [0, 1, 0, 1], blue: [0, 0, 1, 1], fuschia: [1, 0, 1, 1],
        yellow: [1, 1, 0, 1], teal: [0, 0.5, 0.5, 1], aqua: [0, 1, 1, 1],
        olive: [0.5, 0.5, 0, 1], black: [0, 0, 0, 1], white: [1, 1, 1, 1],
        orange: [1, 0.84, 0, 1]
    };
    if (args.length === 1 && typeof args[0] === "string") return (named[args[0]] || named.white).slice();
    if (args.length >= 3) return [args[0], args[1], args[2], args.length > 3 ? args[3] : 1.0];
    return null;
}
parseColor.local = 1;

function addWave(name, colorArgs)
{
    if (typeof name !== "string") { err("waveform needs a buffer name"); return; }
    var idx = findWave(name);
    var layer = idx >= 0 ? waveLayers[idx] : newWaveLayer(name);
    var col = parseColor(colorArgs || []);
    if (col) layer.color = col;
    if (!startBuild(layer)) return;
    if (idx < 0) waveLayers.push(layer);
    if (markerLayer) markerLayer.extent = extentFrames();
    kickBuild();
    requestWaveRedraw();
}
addWave.local = 1;

function waveform()
{
    var a = arrayfromargs(arguments);
    addWave(a[0], a.slice(1));
}

function buffer(name) { addWave(name, []); }

function features() { err("'features' layers are not supported in v2 (waveform and slices only)"); }
function image() { err("'image' layers are not supported in v2 (waveform and slices only)"); }

// ================================================================= markers
function newMarkerLayer(source, reference)
{
    return {
        source: source,
        reference: reference,
        positions: [],      // in samples of the reference / waveform
        extent: 0,
        color: DEFAULT_MARKER_COLOR.slice(),
        selcolor: DEFAULT_MARKER_SEL_COLOR.slice()
    };
}
newMarkerLayer.local = 1;

function loadMarkerData(ml)
{
    var src = bufInfo(ml.source);
    if (!src) { err('buffer "' + ml.source + '" does not exist'); return false; }
    if (src.frames < 1) { err('buffer "' + ml.source + '" is empty'); return false; }

    var data = peekArray(src.buf, 1, 0, src.frames);
    if (data.length === 1 && (data[0] === -1 || data[0] === 0)) {
        err("slices buffer has no valid slice points");
        return false;
    }
    var pos = [];
    for (var i = 0; i < data.length; i++)
        if (data[i] >= 0) pos.push(data[i]);
    pos.sort(function (a, b) { return a - b; });
    ml.positions = pos;

    if (waveLayers.length > 0) {
        ml.extent = waveLayers[0].frames;
    } else if (typeof ml.reference === "string") {
        var ref = bufInfo(ml.reference);
        ml.extent = ref ? ref.frames : (pos.length ? pos[pos.length - 1] : 0);
    } else {
        ml.extent = pos.length ? pos[pos.length - 1] : 0;
    }
    return true;
}
loadMarkerData.local = 1;

function addmarkers(source, reference)
{
    if (typeof source !== "string") { err("marker layer must have a source (buffer)"); return; }
    if (reference === undefined) { err("no reference buffer or sample rate provided"); return; }
    if (typeof reference === "string") {
        var ref = bufInfo(reference);
        if (!ref) { err("reference buffer does not exist"); return; }
        if (ref.frames < 1) { err("reference buffer is empty"); return; }
    } else if (typeof reference === "number" && reference <= 0) {
        err("reference must be a valid sampling rate");
        return;
    }

    var ml = newMarkerLayer(source, reference);
    if (markerLayer) { ml.color = markerLayer.color; ml.selcolor = markerLayer.selcolor; }
    if (!loadMarkerData(ml)) return;
    markerLayer = ml;
    hover = -1;
    dragIndex = -1;
    mgraphics.redraw();          // markers only: the cached waveform is reused
}
addmarkers.local = 1;

function slices(source, reference) { addmarkers(source, reference); }
function markers(source, reference) { addmarkers(source, reference); }
function indicesbuffer(source, reference) { addmarkers(source, reference); }

function sortedPositions()
{
    return markerLayer ? markerLayer.positions.slice().sort(function (a, b) { return a - b; }) : [];
}
sortedPositions.local = 1;

function getmarkers()
{
    if (!markerLayer) return;
    outlet(2, "markers", sortedPositions());
}

// frame position <-> x pixel, in the current zoom window
function frameToX(f, w)
{
    var N = extentFrames();
    if (N <= 0) return -1;
    return ((f / N) - visOffset()) / zoom * w;
}
frameToX.local = 1;

function xToFrame(x, w)
{
    var N = extentFrames();
    return clamp((visOffset() + (x / w) * zoom) * N, 0, N);
}
xToFrame.local = 1;

function markerAt(x)
{
    if (!markerLayer) return -1;
    var w = boxSize()[0];
    var best = -1, bestD = HIT_TOLERANCE_PX + 1;
    var p = markerLayer.positions;
    for (var i = 0; i < p.length; i++) {
        var d = Math.abs(frameToX(p[i], w) - x);
        if (d < bestD) { bestD = d; best = i; }
    }
    return bestD <= HIT_TOLERANCE_PX ? best : -1;
}
markerAt.local = 1;

// ================================================================= general messages
function init()
{
    buildTask.cancel();
    waveLayers = [];
    markerLayer = null;
    hover = -1;
    dragIndex = -1;
    waveImg = null;
    requestWaveRedraw();
}
init.local = 1;

function loadbang() { init(); }
function clear() { init(); }

function refresh()
{
    var ok = [];
    waveLayers.forEach(function (l) { if (startBuild(l)) ok.push(l); });
    waveLayers = ok;
    if (markerLayer) loadMarkerData(markerLayer);
    if (waveLayers.length) kickBuild();
    requestWaveRedraw();
}

function remove(name)
{
    var i = findWave(name);
    if (i >= 0) { waveLayers.splice(i, 1); requestWaveRedraw(); return; }
    if (markerLayer && markerLayer.source === name) { markerLayer = null; hover = -1; mgraphics.redraw(); }
}

function getlayers()
{
    var names = waveLayers.map(function (l) { return l.name; });
    if (markerLayer) names.push(markerLayer.source);
    outlet(0, "layers", names);
}

function color()
{
    var a = arrayfromargs(arguments);
    var col = parseColor(a.slice(1));
    if (!col) { err("not enough color arguments"); return; }
    var i = findWave(a[0]);
    if (i >= 0) { waveLayers[i].color = col; requestWaveRedraw(); return; }
    if (markerLayer && markerLayer.source === a[0]) { markerLayer.color = col; mgraphics.redraw(); return; }
    err("layer " + a[0] + " not found");
}

function selcolor()
{
    var a = arrayfromargs(arguments);
    var col = parseColor(a.slice(1));
    if (!col) { err("not enough color arguments"); return; }
    if (markerLayer && markerLayer.source === a[0]) { markerLayer.selcolor = col; mgraphics.redraw(); return; }
    err("marker layer " + a[0] + " not found");
}

function bgcolor()
{
    var a = arrayfromargs(arguments);
    if (a.length < 1) { err("not enough color arguments"); return; }
    for (var i = 0; i < Math.min(4, a.length); i++) backgroundcolor[i] = a[i];
    requestWaveRedraw();
}

function dump() { err("dump is not supported in v2"); }
function dictionary() { err("dictionary input is not supported in v2"); }

function verbose(v) { verboseOn = v ? 1 : 0; }

// ================================================================= rendering
// For one channel, fill top[] (max) and bot[] (min) per pixel column.
// Returns "env" (filled shape) or "line" (individual samples, deep zoom).
function channelEnvelope(layer, c, w, top, bot, lineOut)
{
    var N = layer.frames;
    var off = visOffset();
    var vStart = off * N;
    var vLen = zoom * N;
    var fpp = vLen / w;                       // frames per pixel

    if (fpp >= BASE) {
        // choose the coarsest finished level whose bins are not wider than a pixel
        var avail = layer.complete ? layer.levels.length : 1;
        var L = 0, bf = BASE;
        while (L + 1 < avail && bf * FACTOR <= fpp) { L++; bf *= FACTOR; }
        var mn = layer.levels[L][c].min, mx = layer.levels[L][c].max;
        var nb = mn.length;
        for (var px = 0; px < w; px++) {
            var a = vStart + px * fpp;
            var i0 = Math.floor(a / bf);
            var i1 = Math.max(i0 + 1, Math.ceil((a + fpp) / bf));
            if (i0 >= nb) { top[px] = 0; bot[px] = 0; continue; }
            if (i1 > nb) i1 = nb;
            var lo = mn[i0], hi = mx[i0];
            for (var i = i0 + 1; i < i1; i++) {
                if (mn[i] < lo) lo = mn[i];
                if (mx[i] > hi) hi = mx[i];
            }
            top[px] = hi; bot[px] = lo;
        }
        return "env";
    }

    // zoomed in: read only the visible samples straight from the buffer
    var info = bufInfo(layer.name);
    if (!info) return "none";
    var s0 = Math.max(0, Math.floor(vStart));
    var s1 = Math.min(N, Math.ceil(vStart + vLen) + 1);
    if (s1 - s0 < 1) return "none";
    var s = peekArray(info.buf, c + 1, s0, s1 - s0);

    if (fpp >= 1) {
        for (var px2 = 0; px2 < w; px2++) {
            var a0 = Math.floor(vStart + px2 * fpp) - s0;
            var a1 = Math.max(a0 + 1, Math.floor(vStart + (px2 + 1) * fpp) - s0);
            if (a0 >= s.length) { top[px2] = 0; bot[px2] = 0; continue; }
            if (a1 > s.length) a1 = s.length;
            var lo2 = s[a0], hi2 = s[a0];
            for (var j = a0 + 1; j < a1; j++) {
                if (s[j] < lo2) lo2 = s[j];
                if (s[j] > hi2) hi2 = s[j];
            }
            top[px2] = hi2; bot[px2] = lo2;
        }
        return "env";
    }

    // fewer than one frame per pixel: connect the individual samples
    lineOut.length = 0;
    for (var k = 0; k < s.length; k++)
        lineOut.push([(s0 + k - vStart) / fpp, s[k]]);
    return "line";
}
channelEnvelope.local = 1;

function renderWave(w, h)
{
    var t0 = Date.now();
    var g = new MGraphics(w, h);
    g.init();
    g.relative_coords = 0;
    g.autofill = 0;

    g.set_source_rgba(backgroundcolor[0], backgroundcolor[1], backgroundcolor[2], backgroundcolor[3]);
    g.rectangle(0, 0, w, h);
    g.fill();

    var top = new Float32Array(w), bot = new Float32Array(w), line = [];

    waveLayers.forEach(function (layer) {
        if (layer.chans < 1 || layer.levels.length === 0) return;
        var laneH = h / layer.chans;
        var half = laneH * 0.5 * 0.95;
        g.set_source_rgba(layer.color[0], layer.color[1], layer.color[2], layer.color[3]);

        for (var c = 0; c < layer.chans; c++) {
            var mid = c * laneH + laneH * 0.5;
            var mode = channelEnvelope(layer, c, w, top, bot, line);

            if (mode === "env") {
                // top edge left -> right, bottom edge right -> left, one filled shape
                g.move_to(0, mid - clamp(top[0], -1, 1) * half);
                for (var x = 1; x < w; x++) {
                    var yt = mid - clamp(top[x], -1, 1) * half;
                    var yb = mid - clamp(bot[x], -1, 1) * half;
                    if (yb - yt < 1) yt = (yt + yb) * 0.5 - 0.5;   // keep at least 1 px
                    g.line_to(x + 0.5, yt);
                }
                for (var x2 = w - 1; x2 >= 0; x2--) {
                    var yt2 = mid - clamp(top[x2], -1, 1) * half;
                    var yb2 = mid - clamp(bot[x2], -1, 1) * half;
                    if (yb2 - yt2 < 1) yb2 = (yt2 + yb2) * 0.5 + 0.5;
                    g.line_to(x2 + 0.5, yb2);
                }
                g.close_path();
                g.fill();
            } else if (mode === "line" && line.length > 0) {
                g.set_line_width(1);
                g.move_to(line[0][0], mid - clamp(line[0][1], -1, 1) * half);
                for (var k = 1; k < line.length; k++)
                    g.line_to(line[k][0], mid - clamp(line[k][1], -1, 1) * half);
                g.stroke();
            }
        }
    });

    waveImg = new Image(g);
    waveDirty = false;
    log("waveform rendered in " + (Date.now() - t0) + " ms (" + w + " px)");
}
renderWave.local = 1;

function drawMarkers(w, h)
{
    if (!markerLayer) return;
    var p = markerLayer.positions;
    var col = markerLayer.color, sel = markerLayer.selcolor;
    var drew = false;

    mgraphics.set_line_width(1);
    mgraphics.set_source_rgba(col[0], col[1], col[2], col[3]);
    for (var i = 0; i < p.length; i++) {
        if (i === hover) continue;
        var x = frameToX(p[i], w);
        if (x < -1 || x > w + 1) continue;
        x = Math.round(x) + 0.5;
        mgraphics.move_to(x, 0);
        mgraphics.line_to(x, h);
        drew = true;
    }
    if (drew) mgraphics.stroke();

    if (hover >= 0 && hover < p.length) {
        var xs = Math.round(frameToX(p[hover], w)) + 0.5;
        mgraphics.set_line_width(2);
        mgraphics.set_source_rgba(sel[0], sel[1], sel[2], sel[3]);
        mgraphics.move_to(xs, 0);
        mgraphics.line_to(xs, h);
        mgraphics.stroke();
    }
}
drawMarkers.local = 1;

function paint()
{
    var sz = boxSize();
    var w = sz[0], h = sz[1];
    if (w !== lastW || h !== lastH) { lastW = w; lastH = h; waveDirty = true; }
    if (waveDirty || !waveImg) renderWave(w, h);

    mgraphics.image_surface_draw(waveImg);
    drawMarkers(w, h);

    if (anyBuilding()) {
        mgraphics.set_source_rgba(1, 1, 1, 0.8);
        mgraphics.set_font_size(10);
        mgraphics.move_to(6, 14);
        mgraphics.show_text("building overview " + Math.round(buildProgress() * 100) + "%");
    }
}

// ================================================================= mouse
function onidle(x, y, button, mod1, shift, caps, opt, mod2)
{
    var h = markerAt(x);
    if (h !== hover) { hover = h; mgraphics.redraw(); }   // redraw only on change
}

function onidleout(x, y, button, mod1, shift, caps, opt, mod2)
{
    if (hover !== -1 && dragIndex < 0) { hover = -1; mgraphics.redraw(); }
}

function onclick(x, y, button, mod1, shift, caps, opt, mod2)
{
    if (!markerLayer) return;
    var w = boxSize()[0];

    if (shift && !mod1) {                               // add
        markerLayer.positions.push(Math.round(xToFrame(x, w)));
        markerLayer.positions.sort(function (a, b) { return a - b; });
        hover = markerAt(x);
        mgraphics.redraw();
    } else if (shift && mod1) {                         // delete highlighted
        var i = markerAt(x);
        if (i >= 0) {
            markerLayer.positions.splice(i, 1);
            hover = -1;
            mgraphics.redraw();
        }
    } else {                                            // start dragging
        dragIndex = markerAt(x);
        hover = dragIndex;
    }
}

function ondrag(x, y, button, mod1, shift, caps, opt, mod2)
{
    var w = boxSize()[0];
    if (markerLayer && dragIndex >= 0 && dragIndex < markerLayer.positions.length) {
        markerLayer.positions[dragIndex] = Math.round(xToFrame(clamp(x, 0, w), w));
        mgraphics.redraw();
    }
    var pos = clamp(visOffset() + (x / w) * zoom, visOffset(), visOffset() + zoom);
    outlet(0, "position", pos);

    if (!button && markerLayer && dragIndex >= 0) {     // mouse released
        var moved = markerLayer.positions[dragIndex];
        markerLayer.positions.sort(function (a, b) { return a - b; });
        hover = markerLayer.positions.indexOf(moved);
        dragIndex = -1;
        mgraphics.redraw();
    }
}

function ondblclick(x, y, button, mod1, shift, caps, opt, mod2)
{
    if (!markerLayer) return;
    var w = boxSize()[0];
    var total = extentFrames();
    if (total <= 0) return;
    var clickPos = xToFrame(x, w);
    var p = sortedPositions();

    var left = 0;
    for (var i = 0; i < p.length; i++) {
        if (p[i] <= clickPos) left = p[i]; else break;
    }
    var right = total;
    for (var j = p.length - 1; j >= 0; j--) {
        if (p[j] >= clickPos) right = p[j]; else break;
    }
    outlet(2, "region", left / total, right / total);
}

function onwheel(x, y, scrollx, scrolly, mod1, shift, caps, opt, mod2)
{
    var w = boxSize()[0];
    if (shift) {
        var newOffset = clamp(offset + scrollx * 0.1, 0, 1 - zoom);
        offset = newOffset;
        outlet(3, "offset", newOffset);
    } else {
        var mousePos = (x / w) * zoom + visOffset();
        var newZoom = clamp(zoom - scrolly * 0.5, 0.01, 1.0);
        var newOff = clamp(mousePos - (x / w) * newZoom, 0, 1 - newZoom);
        zoom = newZoom;
        offset = newOff;
        outlet(3, "zoom", newZoom);
    }
    outlet(3, "zoom_offset", zoom, offset);
    hover = markerAt(x);
    requestWaveRedraw();
}

function onresize()
{
    requestWaveRedraw();
}

// ================================================================= lifecycle
function notifydeleted()
{
    buildTask.cancel();
    buildTask.freepeer();
}

init();
