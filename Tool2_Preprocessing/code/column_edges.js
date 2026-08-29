mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;

// --- configuration constants ---
const FONT_SIZE = 12;
const LABEL_BAND_RATIO = 0.55;  // top fraction of height reserved for labels

// --- mutable state ---
let values   = [];   // n+1 boundary values
let sidePad  = 20;   // px reserved on each side for edge labels
let decimals = 3;    // max decimal digits, trailing zeros trimmed

// --- helpers ---
function formatValue(v, p) {
    let s = v.toFixed(p);
    if (s.indexOf('.') !== -1) {
        s = s.replace(/0+$/, '');   // strip trailing zeros: "25.000" -> "25."
        s = s.replace(/\.$/, '');   // strip lone trailing dot: "25." -> "25"
    }
    return s;
}

// --- message handlers (function name == Max message selector) ---
function list(...args) {
    values = args.map(v => Number(v));
    mgraphics.redraw();
}

function clear() {
    values = [];
    mgraphics.redraw();
}

function pad(v) {
    sidePad = Math.max(0, Number(v));
    mgraphics.redraw();
}

function precision(v) {
    decimals = Math.max(0, Math.round(Number(v)));
    mgraphics.redraw();
}

// --- paint ---
function paint() {
    const w = mgraphics.size[0];
    const h = mgraphics.size[1];
    const n_boundaries = values.length;

    // background
    mgraphics.set_source_rgba(0.173, 0.173, 0.173, 1.000);
    mgraphics.rectangle(0, 0, w, h);
    mgraphics.fill();

    if (n_boundaries === 0) return;

    // --- geometry ---
    const inner_left  = sidePad;
    const inner_width = w - 2 * sidePad;
    const n_classes   = n_boundaries - 1;
    // step between successive tick positions; if only one boundary, no step
    const step        = n_classes > 0 ? inner_width / n_classes : 0;

    const label_band_h = h * LABEL_BAND_RATIO;
    const sep_y        = label_band_h;

    // --- horizontal separator (solid) ---
    mgraphics.set_source_rgba(0.5, 0.5, 0.5, 0.6);
    mgraphics.set_line_width(0.5);
    mgraphics.move_to(inner_left, sep_y);
    mgraphics.line_to(inner_left + inner_width, sep_y);
    mgraphics.stroke();

    // --- vertical dashed tick lines, from separator down to bottom ---
    mgraphics.set_dash(3, 3);

    for (let i = 0; i < n_boundaries; i++) {
        const tick_x = inner_left + i * step;
        mgraphics.move_to(tick_x, sep_y);
        mgraphics.line_to(tick_x, h - 2);
        mgraphics.stroke();
    }

    mgraphics.set_dash(1, 0);  // reset to solid

    // --- text labels in top band ---
    mgraphics.select_font_face("Arial");
    mgraphics.set_font_size(FONT_SIZE);
    mgraphics.set_source_rgba(0.9, 0.9, 0.9, 1.0);

    const fe         = mgraphics.font_extents();
    const ascent     = fe[0];
    const descent    = fe[1];
    // typographic centre of the top band, same idiom as column_numbers.js
    const baseline_y = label_band_h / 2.0 + (ascent - descent) / 2.0;

    for (let i = 0; i < n_boundaries; i++) {
        const tick_x = inner_left + i * step;
        const label  = formatValue(values[i], decimals);
        const ext    = mgraphics.text_measure(label);
        const text_w = ext[0];

        // centre text on tick, clamp inside widget to prevent invisible crop
        let text_left = tick_x - text_w / 2.0;
        text_left = Math.max(2, Math.min(text_left, w - text_w - 2));

        mgraphics.move_to(text_left, baseline_y);
        mgraphics.show_text(label);
    }
}