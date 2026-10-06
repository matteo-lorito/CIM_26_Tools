mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;

var values = [];
var FONT_SIZE = 12;

function list() {
    values = [];
    for (var i = 0; i < arguments.length; i++) {
        values.push(Math.round(arguments[i]));
    }
    mgraphics.redraw();
}

function msg_int(v) {
    values = [Math.round(v)];
    mgraphics.redraw();
}

function paint() {
    var w = mgraphics.size[0];
    var h = mgraphics.size[1];
    var n = values.length;

    // background
    mgraphics.set_source_rgba(0.15, 0.15, 0.15, 1.0);
    mgraphics.rectangle(0, 0, w, h);
    mgraphics.fill();

    if (n === 0) return;

    var col_w = w / n;

    // --- divider lines ---
    mgraphics.set_source_rgba(0.5, 0.5, 0.5, 0.6);
    mgraphics.set_line_width(0.5);
    mgraphics.set_dash(3, 3);  // 3px dash, 3px gap

    for (var i = 1; i < n; i++) {
        var x = i * col_w;
        mgraphics.move_to(x, 2);
        mgraphics.line_to(x, h - 2);
        mgraphics.stroke();
    }

    mgraphics.set_dash(1, 0);  // reset to solid line

    // --- text labels ---
    mgraphics.select_font_face("Arial");
    mgraphics.set_font_size(FONT_SIZE);
    mgraphics.set_source_rgba(0.9, 0.9, 0.9, 1.0);

    // font_extents gives ascent, descent, height
    // we use it once to get the true typographic centre
    var fe = mgraphics.font_extents();
    var ascent  = fe[0];
    var descent = fe[1];
    // visual centre of the text block relative to baseline:
    // baseline sits at h/2 + (ascent - descent) / 2
    var baseline_y = h / 2.0 + (ascent - descent) / 2.0;

    for (var i = 0; i < n; i++) {
        var label = values[i].toString();
        var ext = mgraphics.text_measure(label);
        var text_w = ext[0];

        var x = i * col_w + (col_w - text_w) / 2.0;

        mgraphics.move_to(x, baseline_y);
        mgraphics.show_text(label);
    }
}