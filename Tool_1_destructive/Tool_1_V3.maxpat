{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 4,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 1932.0, -339.0, 1866.0, 796.0 ],
        "openinpresentation": 1,
        "showontab": 0,
        "boxes": [
            {
                "box": {
                    "id": "obj-230",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 4135.577061116695, 1280.769273519516, 29.5, 22.0 ],
                    "text": "+"
                }
            },
            {
                "box": {
                    "id": "obj-227",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 4400.000146865845, 1397.752920627594, 114.0, 35.0 ],
                    "saved_object_attributes": {
                        "legacyoutputorder": 0
                    },
                    "text": "regexp ^(.*/)([^/]+)$ %1remaining/%2"
                }
            },
            {
                "box": {
                    "id": "obj-223",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3597.4946692585945, 577.8846346735954, 79.0, 22.0 ],
                    "text": "r reset_query"
                }
            },
            {
                "box": {
                    "id": "obj-218",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "bang" ],
                    "patching_rect": [ 3564.423195898533, 428.84616816043854, 52.071473360061646, 22.0 ],
                    "text": "t f b"
                }
            },
            {
                "box": {
                    "id": "obj-217",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 3597.4946692585945, 481.0, 81.0, 22.0 ],
                    "text": "s reset_query"
                }
            },
            {
                "box": {
                    "id": "obj-207",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3259.615493416786, 980.7692635059357, 79.0, 22.0 ],
                    "text": "r reset_query"
                }
            },
            {
                "box": {
                    "id": "obj-208",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3259.615493416786, 1023.0769572257996, 35.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "ignoreclick": 1,
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1028.9473586082458, 1883.4584793448448, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1257.5631647109985, 469.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-118",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1085.526305437088, 1884.7742688059807, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1314.5631647109985, 469.0, 106.0, 20.0 ],
                    "text": "number of classes"
                }
            },
            {
                "box": {
                    "id": "obj-190",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 1028.9473586082458, 1845.3005849719048, 29.5, 22.0 ],
                    "text": "- 1"
                }
            },
            {
                "box": {
                    "id": "obj-204",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1028.9473586082458, 1804.511111676693, 37.0, 22.0 ],
                    "text": "zl.len"
                }
            },
            {
                "box": {
                    "id": "obj-733",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 903.846184015274, 1907.299259841442, 35.0, 22.0 ],
                    "text": "open"
                }
            },
            {
                "box": {
                    "border": 0,
                    "filename": "column_edges.js",
                    "id": "obj-14",
                    "maxclass": "v8ui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 852.63157081604, 1955.7692960500717, 422.90079259872437, 63.801058650016785 ],
                    "presentation": 1,
                    "presentation_rect": [ 1257.0, 564.0, 254.0, 27.0 ],
                    "textfile": {
                        "filename": "column_edges.js",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    },
                    "varname": "v8ui_AC"
                }
            },
            {
                "box": {
                    "id": "obj-643",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 801.4598497152328, 813.138681769371, 100.0, 22.0 ],
                    "saved_object_attributes": {
                        "embed": 0,
                        "precision": 6
                    },
                    "text": "coll table_header"
                }
            },
            {
                "box": {
                    "id": "obj-642",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 4527.615530967712, 1393.2692772746086, 141.1264020204544, 35.0 ],
                    "saved_object_attributes": {
                        "legacyoutputorder": 0
                    },
                    "text": "regexp ^(.*)/[^/]+/([^/]+)$ %1/remaining/%2"
                }
            },
            {
                "box": {
                    "id": "obj-640",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4762.500158965588, 1048.802332162857, 79.0, 22.0 ],
                    "text": "r reset_query"
                }
            },
            {
                "box": {
                    "id": "obj-641",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4762.500158965588, 1090.1484873890877, 35.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "id": "obj-638",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4073.595455288887, 1042.307727098465, 79.0, 22.0 ],
                    "text": "r reset_query"
                }
            },
            {
                "box": {
                    "id": "obj-639",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4073.595455288887, 1083.6538823246956, 35.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "id": "obj-636",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 4073.595455288887, 1153.932676434517, 143.0, 22.0 ],
                    "saved_object_attributes": {
                        "embed": 0,
                        "precision": 6
                    },
                    "text": "coll remaining_data_path"
                }
            },
            {
                "box": {
                    "id": "obj-635",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "int" ],
                    "patching_rect": [ 4200.000195264816, 939.3259177207947, 70.0, 22.0 ],
                    "text": "t b 1"
                }
            },
            {
                "box": {
                    "fontlink": 1,
                    "id": "obj-853",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 4200.000195264816, 901.1236674785614, 123.384765625, 21.40625 ],
                    "presentation": 1,
                    "presentation_rect": [ 1495.0895318984985, 336.89688017964363, 123.384765625, 21.40625 ],
                    "text": "Export selected files",
                    "texton": "Export selected files",
                    "truncate": 0
                }
            },
            {
                "box": {
                    "id": "obj-634",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 3925.3931970596313, 1077.3333654403687, 52.0, 22.0 ],
                    "text": "gate 2 1"
                }
            },
            {
                "box": {
                    "id": "obj-629",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 4296.629556655884, 477.81430810689926, 99.05660837888718, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-630",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4296.629556655884, 519.387345135212, 39.0, 22.0 ],
                    "text": "dump"
                }
            },
            {
                "box": {
                    "id": "obj-632",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4213.483482599258, 519.387345135212, 35.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "id": "obj-633",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 4213.483482599258, 563.2075733542442, 113.0, 22.0 ],
                    "saved_object_attributes": {
                        "embed": 0,
                        "precision": 6
                    },
                    "text": "coll remaining_data"
                }
            },
            {
                "box": {
                    "id": "obj-331",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 4422.472263336182, 1008.3528907299042, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-497",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 4422.472263336182, 928.5776034593582, 31.404956936836243, 31.404956936836243 ]
                }
            },
            {
                "box": {
                    "filename": "export_remaining_files.js",
                    "id": "obj-515",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4422.472263336182, 975.7686184644699, 219.0, 22.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0
                    },
                    "text": "v8 export_remaining_files.js @embed 1",
                    "textfile": {
                        "filename": "export_remaining_files.js",
                        "flags": 1,
                        "embed": 0,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "id": "obj-524",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4506.741932988167, 1092.6225603818893, 162.0, 22.0 ],
                    "text": "push_to_coll remaining_data"
                }
            },
            {
                "box": {
                    "id": "obj-559",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "bang", "bang", "int", "bang" ],
                    "patching_rect": [ 4422.11553221941, 1048.802332162857, 103.84615731239319, 22.0 ],
                    "text": "t b b 2 b"
                }
            },
            {
                "box": {
                    "id": "obj-622",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4422.472263336182, 1102.7349207401276, 39.0, 22.0 ],
                    "text": "dump"
                }
            },
            {
                "box": {
                    "fontlink": 1,
                    "id": "obj-627",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 4422.472263336182, 884.7573752403259, 131.38282012939453, 21.40625 ],
                    "presentation": 1,
                    "presentation_rect": [ 1637.0, 336.89688017964363, 131.38282012939453, 21.40625 ],
                    "text": "Export remaining files",
                    "texton": "Export remaining files",
                    "truncate": 0
                }
            },
            {
                "box": {
                    "id": "obj-628",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "dictionary", "", "", "", "" ],
                    "patching_rect": [ 4506.741932988167, 1146.0675072669983, 139.0, 22.0 ],
                    "saved_object_attributes": {
                        "legacy": 0,
                        "parameter_enable": 0,
                        "parameter_mappable": 0
                    },
                    "text": "dict data_dict_remaining"
                }
            },
            {
                "box": {
                    "id": "obj-621",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 7209.999312400818, 1599.9998474121094, 83.0, 22.0 ],
                    "text": "slicing\\, wait..."
                }
            },
            {
                "box": {
                    "id": "obj-547",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 7209.999312400818, 1564.9998507499695, 78.0, 22.0 ],
                    "text": "r new_slicing"
                }
            },
            {
                "box": {
                    "id": "obj-527",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 6889.999342918396, 1059.9998989105225, 80.0, 22.0 ],
                    "text": "s new_slicing"
                }
            },
            {
                "box": {
                    "id": "obj-526",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 6849.999346733093, 1024.9999022483826, 60.526315212249756, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-287",
                    "items": [ "Duration", ",", "SR", ",", "channels" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 3362.6667668819427, 354.8357645869255, 100.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1243.75, 286.71875, 72.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-520",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 6344.999394893646, 669.9999361038208, 54.0, 22.0 ],
                    "text": "deferlow"
                }
            },
            {
                "box": {
                    "id": "obj-283",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 716.8000106811523, 337.600005030632, 55.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 717.1875, 337.60000517964363, 69.0, 20.0 ],
                    "text": "report"
                }
            },
            {
                "box": {
                    "id": "obj-617",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2488.2479072213173, 2162.727195382118, 129.0, 22.0 ],
                    "text": "s process_progression"
                }
            },
            {
                "box": {
                    "id": "obj-618",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2488.2479072213173, 2124.5453785657883, 112.0, 22.0 ],
                    "text": "Process terminated"
                }
            },
            {
                "box": {
                    "id": "obj-620",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 2488.2479072213173, 2083.6362891197205, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-607",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 6829.999348640442, 1689.9998388290405, 129.0, 22.0 ],
                    "text": "s process_progression"
                }
            },
            {
                "box": {
                    "id": "obj-610",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 6829.999348640442, 1654.9998421669006, 112.0, 22.0 ],
                    "text": "Process terminated"
                }
            },
            {
                "box": {
                    "id": "obj-611",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 6829.999348640442, 1614.999845981598, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-590",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 7534.999281406403, 1569.9998502731323, 83.0, 22.0 ],
                    "text": "r reset_slicing"
                }
            },
            {
                "box": {
                    "id": "obj-571",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 7049.999327659607, 1684.9998393058777, 72.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-564",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 9121.999141693115, 1179.5454432964325, 129.0, 22.0 ],
                    "text": "s process_progression"
                }
            },
            {
                "box": {
                    "id": "obj-562",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 7459.99928855896, 1569.9998502731323, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-560",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 7459.99928855896, 1604.9998469352722, 35.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "autoscroll": 0,
                    "bangmode": 1,
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-552",
                    "keymode": 1,
                    "lines": 1,
                    "maxclass": "textedit",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 7049.999327659607, 1729.9998350143433, 174.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 563.200008392334, 336.00000500679016, 145.39374160766602, 23.20000034570694 ],
                    "tabmode": 0,
                    "text": "Process terminated"
                }
            },
            {
                "box": {
                    "id": "obj-551",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 9121.999141693115, 1139.7727164030075, 112.0, 22.0 ],
                    "text": "Process terminated"
                }
            },
            {
                "box": {
                    "id": "obj-422",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 9121.999141693115, 1098.863625884056, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-550",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 7049.999327659607, 1564.9998507499695, 127.0, 22.0 ],
                    "text": "r process_progression"
                }
            },
            {
                "box": {
                    "id": "obj-518",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "bang" ],
                    "patching_rect": [ 5964.99943113327, 234.99997758865356, 29.5, 22.0 ],
                    "text": "t i b"
                }
            },
            {
                "box": {
                    "id": "obj-281",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 6569.999373435974, 209.99997997283936, 38.0, 22.0 ],
                    "text": "zl.reg"
                }
            },
            {
                "box": {
                    "id": "obj-626",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 6774.999353885651, 224.99997854232788, 22.0, 22.0 ],
                    "text": "t b"
                }
            },
            {
                "box": {
                    "id": "obj-624",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 6774.999353885651, 254.99997568130493, 85.0, 22.0 ],
                    "text": "s reset_slicing"
                }
            },
            {
                "box": {
                    "id": "obj-623",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 7434.999290943146, 1319.9998741149902, 83.0, 22.0 ],
                    "text": "r reset_slicing"
                }
            },
            {
                "box": {
                    "id": "obj-612",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 7244.999309062958, 534.9999489784241, 83.0, 22.0 ],
                    "text": "r reset_slicing"
                }
            },
            {
                "box": {
                    "id": "obj-609",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 6144.999413967133, 489.9999532699585, 83.0, 22.0 ],
                    "text": "r reset_slicing"
                }
            },
            {
                "box": {
                    "id": "obj-608",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 6144.999413967133, 524.9999499320984, 35.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "id": "obj-606",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 9349.999108314514, 759.999927520752, 71.0, 22.0 ],
                    "saved_object_attributes": {
                        "versionnumber": 80300
                    },
                    "text": "bach.length"
                }
            },
            {
                "box": {
                    "id": "obj-603",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 6979.999334335327, 1469.9998598098755, 72.0, 22.0 ],
                    "saved_object_attributes": {
                        "versionnumber": 80300
                    },
                    "text": "bach.collect"
                }
            },
            {
                "box": {
                    "id": "obj-601",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 7004.999331951141, 1194.9998860359192, 140.0, 22.0 ],
                    "text": "t b l"
                }
            },
            {
                "box": {
                    "id": "obj-600",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 6739.999357223511, 1269.9998788833618, 29.5, 22.0 ],
                    "text": "t l l"
                }
            },
            {
                "box": {
                    "id": "obj-594",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 7124.99932050705, 1234.999882221222, 71.0, 22.0 ],
                    "saved_object_attributes": {
                        "versionnumber": 80300
                    },
                    "text": "bach.length"
                }
            },
            {
                "box": {
                    "id": "obj-593",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "int" ],
                    "patching_rect": [ 7004.999331951141, 1279.9998779296875, 140.0, 22.0 ],
                    "text": "uzi 10"
                }
            },
            {
                "box": {
                    "id": "obj-124",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 7124.99932050705, 1329.999873161316, 117.0, 22.0 ],
                    "text": "sprintf slice_%d.wav"
                }
            },
            {
                "box": {
                    "id": "obj-503",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 4073.595455288887, 1280.769273519516, 29.5, 22.0 ],
                    "text": "+ 1"
                }
            },
            {
                "box": {
                    "id": "obj-535",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4073.595455288887, 1238.461579799652, 102.0, 22.0 ],
                    "text": "r load_sliced_flag"
                }
            },
            {
                "box": {
                    "id": "obj-546",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 4074.038597524166, 1347.1154295802116, 472.5769334435463, 22.0 ],
                    "text": "gate 4"
                }
            },
            {
                "box": {
                    "id": "obj-498",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 4225.230908672015, 1397.752920627594, 159.99998903274536, 35.0 ],
                    "saved_object_attributes": {
                        "legacyoutputorder": 0
                    },
                    "text": "regexp ^(.*)/[^/]+/([^/]+)$ %1/selected/%2"
                }
            },
            {
                "box": {
                    "id": "obj-545",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 2614.0, 1792.0, 80.0, 22.0 ],
                    "text": "+"
                }
            },
            {
                "box": {
                    "id": "obj-543",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2675.0, 1747.0, 102.0, 22.0 ],
                    "text": "r load_sliced_flag"
                }
            },
            {
                "box": {
                    "id": "obj-536",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "int" ],
                    "patching_rect": [ 81.0, 308.0, 86.79561966657639, 22.0 ],
                    "text": "t s 0"
                }
            },
            {
                "box": {
                    "id": "obj-500",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 626.0, 304.0, 70.0, 22.0 ],
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "id": "obj-279",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 626.0, 446.0, 104.0, 22.0 ],
                    "text": "s load_sliced_flag"
                }
            },
            {
                "box": {
                    "id": "obj-544",
                    "linecount": 3,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 6194.999409198761, 369.9999647140503, 96.22641956806183, 49.0 ],
                    "text": "folders are supported in Long mode only"
                }
            },
            {
                "box": {
                    "id": "obj-542",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 6194.999409198761, 429.9999589920044, 32.0, 22.0 ],
                    "text": "print"
                }
            },
            {
                "box": {
                    "id": "obj-541",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 6194.999409198761, 334.9999680519104, 34.0, 22.0 ],
                    "text": "sel 1"
                }
            },
            {
                "box": {
                    "id": "obj-540",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 6194.999409198761, 299.9999713897705, 63.0, 22.0 ],
                    "text": "=="
                }
            },
            {
                "box": {
                    "id": "obj-539",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 6194.999409198761, 254.99997568130493, 29.5, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-534",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 3925.3931970596313, 1257.3034712076187, 77.0, 22.0 ],
                    "text": "route symbol"
                }
            },
            {
                "box": {
                    "id": "obj-533",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 3988.7549039125443, 477.0364725589752, 99.05660837888718, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-531",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3988.7549039125443, 518.5459084510803, 39.0, 22.0 ],
                    "text": "dump"
                }
            },
            {
                "box": {
                    "id": "obj-530",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "bang", "bang", "", "bang" ],
                    "patching_rect": [ 3551.8869575858116, 1157.3333678245544, 81.26415383815765, 22.0 ],
                    "text": "t b b l b"
                }
            },
            {
                "box": {
                    "id": "obj-502",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 3957.4498007893562, 933.9623075723648, 29.5, 22.0 ],
                    "text": "+ 1"
                }
            },
            {
                "box": {
                    "id": "obj-501",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3958.3931970596313, 975.4717434644699, 134.90566664934158, 22.0 ],
                    "text": "join 2"
                }
            },
            {
                "box": {
                    "id": "obj-499",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 3980.091311275959, 862.264191031456, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-448",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 4031.0347098708153, 858.4906059503555, 62.264153838157654, 22.0 ],
                    "text": "t b s"
                }
            },
            {
                "box": {
                    "id": "obj-403",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "int", "", "", "int" ],
                    "patching_rect": [ 3957.4498007893562, 901.8868343830109, 63.20755010843277, 22.0 ],
                    "text": "counter"
                }
            },
            {
                "box": {
                    "id": "obj-277",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 3925.3931970596313, 1153.932676434517, 105.0, 22.0 ],
                    "saved_object_attributes": {
                        "embed": 0,
                        "precision": 6
                    },
                    "text": "coll selected_data"
                }
            },
            {
                "box": {
                    "id": "obj-496",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 6364.999392986298, 394.9999623298645, 29.5, 22.0 ],
                    "text": "+ 1"
                }
            },
            {
                "box": {
                    "id": "obj-495",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 6324.999396800995, 364.99996519088745, 117.0, 22.0 ],
                    "text": "r short_long_sample"
                }
            },
            {
                "box": {
                    "id": "obj-494",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 6364.999392986298, 439.9999580383301, 109.0, 22.0 ],
                    "text": "gate 2"
                }
            },
            {
                "box": {
                    "id": "obj-490",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 6454.999384403229, 489.9999532699585, 63.0, 22.0 ],
                    "text": "s file_path"
                }
            },
            {
                "box": {
                    "id": "obj-456",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 6499.999380111694, 244.99997663497925, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-474",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 6499.999380111694, 289.9999723434448, 29.5, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "obj-477",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 6454.999384403229, 294.99997186660767, 29.5, 22.0 ],
                    "text": "2"
                }
            },
            {
                "box": {
                    "id": "obj-488",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 6454.999384403229, 209.99997997283936, 65.23656117916107, 22.0 ],
                    "text": "sel fold"
                }
            },
            {
                "box": {
                    "id": "obj-393",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 6739.999357223511, 144.9999861717224, 212.0, 33.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 650.0000216960907, 174.66666513681412, 139.85711431503296, 33.0 ],
                    "text": "folders are supported in Long mode only"
                }
            },
            {
                "box": {
                    "id": "obj-274",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 6454.999384403229, 364.99996519088745, 132.0, 22.0 ],
                    "text": "gate 2"
                }
            },
            {
                "box": {
                    "id": "obj-253",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 2669.2811300754547, 1348.0, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-224",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 2613.792924284935, 1841.3532199263573, 190.16923439502716, 22.0 ],
                    "text": "gate 2"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 2614.285482108593, 1883.4584793448448, 145.0, 35.0 ],
                    "saved_object_attributes": {
                        "legacyoutputorder": 0
                    },
                    "text": "regexp ^(.*/)([^/]+)$ %1processed/%2"
                }
            },
            {
                "box": {
                    "id": "obj-493",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2683.2811300754547, 1408.496776521206, 147.0, 22.0 ],
                    "text": "textcolor 1. 0.467 0.169 1."
                }
            },
            {
                "box": {
                    "id": "obj-491",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2669.2811300754547, 1451.6340327858925, 161.0, 22.0 ],
                    "text": "textcolor 0.62 0.745 0.953 1."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.2196078431372549, 0.2196078431372549, 0.2196078431372549, 0.0 ],
                    "id": "obj-489",
                    "maxclass": "number",
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 2629.5373657643795, 1526.5444835275412, 30.6049821972847, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1144.9867726564407, 656.3106704652309, 30.6049821972847, 22.0 ],
                    "textcolor": [ 0.62, 0.745, 0.953, 1.0 ],
                    "triangle": 0
                }
            },
            {
                "box": {
                    "id": "obj-487",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 2591.803204536438, 1654.098313331604, 29.5, 22.0 ],
                    "text": "i 2"
                }
            },
            {
                "box": {
                    "id": "obj-478",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 2591.803204536438, 1611.4753637313843, 32.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-481",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 2591.803204536438, 1567.2130699157715, 34.0, 22.0 ],
                    "text": "sel 1"
                }
            },
            {
                "box": {
                    "id": "obj-484",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2591.803204536438, 1494.26225233078, 35.0, 22.0 ],
                    "text": "set 0"
                }
            },
            {
                "box": {
                    "align": 0,
                    "id": "obj-485",
                    "maxclass": "textbutton",
                    "mode": 1,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 2591.814945846796, 1527.0462628901005, 68.32740211486816, 20.996441274881363 ],
                    "presentation": 1,
                    "presentation_rect": [ 1112.4183357954025, 656.2091710567474, 54.90196251869202, 20.26143854856491 ],
                    "text": " --->",
                    "textcolor": [ 0.6196078431372549, 0.7450980392156863, 0.9529411764705882, 1.0 ],
                    "textjustification": 0,
                    "texton": " --->",
                    "textoncolor": [ 1.0, 0.4666666666666667, 0.16862745098039217, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-475",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2468.852388381958, 1654.0145896673203, 29.5, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "obj-472",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 2468.852388381958, 1611.4753637313843, 32.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-461",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2333.60649061203, 1660.6556901931763, 29.5, 22.0 ],
                    "text": "2"
                }
            },
            {
                "box": {
                    "id": "obj-462",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 2333.60649061203, 1611.4753637313843, 32.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-460",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2240.983542442322, 1660.6556901931763, 29.5, 22.0 ],
                    "text": "-1"
                }
            },
            {
                "box": {
                    "id": "obj-455",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 2240.983542442322, 1611.4753637313843, 32.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-454",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 2468.852388381958, 1567.2130699157715, 34.0, 22.0 ],
                    "text": "sel 1"
                }
            },
            {
                "box": {
                    "id": "obj-453",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 2333.60649061203, 1567.2130699157715, 34.0, 22.0 ],
                    "text": "sel 1"
                }
            },
            {
                "box": {
                    "id": "obj-452",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 2240.983542442322, 1567.2130699157715, 34.0, 22.0 ],
                    "text": "sel 1"
                }
            },
            {
                "box": {
                    "id": "obj-451",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2269.6720662117004, 1490.983563899994, 35.0, 22.0 ],
                    "text": "set 0"
                }
            },
            {
                "box": {
                    "id": "obj-450",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2468.852388381958, 1494.26225233078, 35.0, 22.0 ],
                    "text": "set 0"
                }
            },
            {
                "box": {
                    "id": "obj-449",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2333.60649061203, 1494.26225233078, 35.0, 22.0 ],
                    "text": "set 0"
                }
            },
            {
                "box": {
                    "id": "obj-443",
                    "maxclass": "textbutton",
                    "mode": 1,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 2468.852388381958, 1527.0491366386414, 100.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1038.372055888176, 655.8139300346375, 65.11627674102783, 19.767441153526306 ],
                    "text": "---> Mono",
                    "textcolor": [ 0.6196078431372549, 0.7450980392156863, 0.9529411764705882, 1.0 ],
                    "texton": " ---> Mono",
                    "textoncolor": [ 1.0, 0.4666666666666667, 0.16862745098039217, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-442",
                    "maxclass": "textbutton",
                    "mode": 1,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 2333.60649061203, 1527.0491366386414, 100.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 957.5163701176643, 656.2091710567474, 71.89542710781097, 19.60784375667572 ],
                    "text": " ---> Stereo",
                    "textcolor": [ 0.6196078431372549, 0.7450980392156863, 0.9529411764705882, 1.0 ],
                    "texton": " ---> Stereo",
                    "textoncolor": [ 1.0, 0.4666666666666667, 0.16862745098039217, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.08627450980392157, 0.08627450980392157, 0.08627450980392157, 1.0 ],
                    "fontlink": 1,
                    "fontsize": 12.0,
                    "id": "obj-406",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 7404.999293804169, 579.9999446868896, 135.17383575439453, 21.40625 ],
                    "presentation": 1,
                    "presentation_rect": [ 372.514191865921, 584.54543364048, 135.17383575439453, 21.40625 ],
                    "text": "Visualisation shortcuts",
                    "texton": "Visualisation shortcuts"
                }
            },
            {
                "box": {
                    "id": "obj-404",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 7404.999293804169, 624.9999403953552, 35.0, 22.0 ],
                    "text": "open"
                }
            },
            {
                "box": {
                    "id": "obj-341",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 7404.999293804169, 659.9999370574951, 51.0, 22.0 ],
                    "text": "pcontrol"
                }
            },
            {
                "box": {
                    "id": "obj-252",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 43.0, 398.0, 836.0, 205.0 ],
                        "openinpresentation": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 319.0, 278.0, 100.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 319.0, 278.0, 100.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 14.0,
                                    "id": "obj-393",
                                    "linecount": 8,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 194.0, 219.0, 364.0, 132.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 7,
                                    "presentation_rect": [ 44.0, 42.0, 714.0, 116.0 ],
                                    "text": "When patcher is locked:\n- Hover over a marker to select, click and drag to move. \n- Shift + Click to add new markers.\n- Shift + comamnd + Click to remove markers (macOS). Alt + Click to remove markers (Windows).\n- doube click to play the fragment\n- mousewheel to zoom\n- mousewheel + shift to scroll"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-3",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 194.0, 143.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "border": 4,
                                    "bordercolor": [ 0.17254901960784313, 0.17254901960784313, 0.17254901960784313, 1.0 ],
                                    "id": "obj-439",
                                    "maxclass": "panel",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 205.6276112794876, 3549.4829440116882, 128.0, 128.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 15.0, 15.0, 790.0, 170.0 ],
                                    "rounded": 10
                                }
                            }
                        ],
                        "lines": [],
                        "toolbaradditions": [ "packagemanager" ]
                    },
                    "patching_rect": [ 7404.999293804169, 709.9999322891235, 95.0, 22.0 ],
                    "text": "p viz_instruction"
                }
            },
            {
                "box": {
                    "id": "obj-538",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 807.0, 303.0, 32.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.08627450980392157, 0.08627450980392157, 0.08627450980392157, 1.0 ],
                    "fontlink": 1,
                    "fontsize": 12.0,
                    "id": "obj-537",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 807.0, 268.0, 150.09765625, 21.40625 ],
                    "presentation": 1,
                    "presentation_rect": [ 833.59375, 555.46875, 150.09765625, 21.40625 ],
                    "text": "Load an audio files folder",
                    "texton": "Load an audio files folder"
                }
            },
            {
                "box": {
                    "id": "obj-532",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 807.0, 378.0, 101.0, 22.0 ],
                    "text": "opendialog folder"
                }
            },
            {
                "box": {
                    "id": "obj-483",
                    "maxclass": "tab",
                    "multiline": 0,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 5849.999442100525, 249.9999761581421, 96.42857050895691, 23.214285492897034 ],
                    "presentation": 1,
                    "presentation_rect": [ 576.7857087850571, 179.16666495800018, 69.31249141693115, 24.00000035762787 ],
                    "tabcolor": [ 0.6196078431372549, 0.7450980392156863, 0.9529411764705882, 1.0 ],
                    "tabs": "Sample",
                    "textcolor": [ 0.2196078431372549, 0.2196078431372549, 0.2196078431372549, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-480",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1667.96875, 1489.0625, 70.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "obj-479",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 2011.71875, 1612.6083396673203, 34.0, 22.0 ],
                    "text": "sel 1"
                }
            },
            {
                "box": {
                    "id": "obj-476",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 1750.78125, 1611.0458396673203, 34.0, 22.0 ],
                    "text": "sel 1"
                }
            },
            {
                "box": {
                    "id": "obj-473",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 1751.5625, 1654.0145896673203, 32.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-471",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 2100.0, 1654.0145896673203, 32.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-470",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 2011.71875, 1654.0145896673203, 32.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-469",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 1925.78125, 1654.0145896673203, 32.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-468",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 1845.3125, 1654.0145896673203, 32.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-467",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1750.78125, 1543.0770896673203, 35.0, 22.0 ],
                    "text": "set 0"
                }
            },
            {
                "box": {
                    "id": "obj-466",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1843.75, 1536.8270896673203, 35.0, 22.0 ],
                    "text": "set 0"
                }
            },
            {
                "box": {
                    "id": "obj-465",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1924.21875, 1536.8270896673203, 35.0, 22.0 ],
                    "text": "set 0"
                }
            },
            {
                "box": {
                    "id": "obj-464",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2010.15625, 1536.8270896673203, 35.0, 22.0 ],
                    "text": "set 0"
                }
            },
            {
                "box": {
                    "id": "obj-463",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2099.21875, 1536.8270896673203, 35.0, 22.0 ],
                    "text": "set 0"
                }
            },
            {
                "box": {
                    "id": "obj-459",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 1844.53125, 1611.0458396673203, 34.0, 22.0 ],
                    "text": "sel 1"
                }
            },
            {
                "box": {
                    "id": "obj-458",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 1925.78125, 1614.9520896673203, 34.0, 22.0 ],
                    "text": "sel 1"
                }
            },
            {
                "box": {
                    "id": "obj-457",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 2099.21875, 1612.6083396673203, 34.0, 22.0 ],
                    "text": "sel 1"
                }
            },
            {
                "box": {
                    "id": "obj-447",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2100.0, 1702.34375, 42.0, 22.0 ],
                    "text": "96000"
                }
            },
            {
                "box": {
                    "id": "obj-446",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2011.71875, 1702.34375, 42.0, 22.0 ],
                    "text": "88200"
                }
            },
            {
                "box": {
                    "id": "obj-445",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1925.78125, 1702.34375, 42.0, 22.0 ],
                    "text": "48000"
                }
            },
            {
                "box": {
                    "id": "obj-444",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1845.3125, 1702.34375, 42.0, 22.0 ],
                    "text": "44100"
                }
            },
            {
                "box": {
                    "id": "obj-402",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "int" ],
                    "patching_rect": [ 2891.803195953369, 1429.508155822754, 42.0, 22.0 ],
                    "text": "t b b 1"
                }
            },
            {
                "box": {
                    "id": "obj-401",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "int" ],
                    "patching_rect": [ 3067.2130270004272, 1429.508155822754, 42.0, 22.0 ],
                    "text": "t b b 1"
                }
            },
            {
                "box": {
                    "id": "obj-400",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3223.770399570465, 1516.3933992385864, 47.0, 22.0 ],
                    "text": "clearall"
                }
            },
            {
                "box": {
                    "id": "obj-340",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 3067.2130270004272, 1557.377004623413, 77.0, 22.0 ],
                    "text": "route symbol"
                }
            },
            {
                "box": {
                    "id": "obj-333",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 3067.2130270004272, 1397.540943622589, 100.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 912.2345256209373, 712.6213494539261, 107.8125, 20.3125 ],
                    "text": "Convert Selected",
                    "texton": "Convert Selected"
                }
            },
            {
                "box": {
                    "id": "obj-337",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3067.2130270004272, 1485.2458591461182, 39.0, 22.0 ],
                    "text": "dump"
                }
            },
            {
                "box": {
                    "id": "obj-332",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 3067.2130270004272, 1516.3933992385864, 105.0, 22.0 ],
                    "saved_object_attributes": {
                        "embed": 0,
                        "precision": 6
                    },
                    "text": "coll selected_data"
                }
            },
            {
                "box": {
                    "id": "obj-338",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 8999.999141693115, 639.9999389648438, 232.0, 22.0 ],
                    "text": "ears.trim~ @thresh 0.05 @end 1 @start 1"
                }
            },
            {
                "box": {
                    "id": "obj-215",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "int", "bang" ],
                    "patching_rect": [ 481.0, 304.0, 107.0, 22.0 ],
                    "text": "t b 1 b"
                }
            },
            {
                "box": {
                    "id": "obj-202",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 8334.999205112457, 369.9999647140503, 108.0, 22.0 ],
                    "text": "r trig_fold_creation"
                }
            },
            {
                "box": {
                    "id": "obj-191",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 5869.999440193176, 779.9999256134033, 110.0, 22.0 ],
                    "text": "s trig_fold_creation"
                }
            },
            {
                "box": {
                    "id": "obj-134",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 5869.999440193176, 719.9999313354492, 76.56093990802765, 22.0 ],
                    "text": "t b l"
                }
            },
            {
                "box": {
                    "id": "obj-619",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 8059.999231338501, 994.9999051094055, 32.0, 22.0 ],
                    "text": "gate"
                }
            },
            {
                "box": {
                    "id": "obj-614",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 7929.999243736267, 929.9999113082886, 33.0, 22.0 ],
                    "text": "== 0"
                }
            },
            {
                "box": {
                    "id": "obj-615",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 7929.999243736267, 889.9999151229858, 117.0, 22.0 ],
                    "text": "r short_long_sample"
                }
            },
            {
                "box": {
                    "id": "obj-616",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 7929.999243736267, 994.9999051094055, 32.0, 22.0 ],
                    "text": "gate"
                }
            },
            {
                "box": {
                    "id": "obj-613",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 5909.999436378479, 949.9999094009399, 31.0, 22.0 ],
                    "text": "stop"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.08627450980392157, 0.08627450980392157, 0.08627450980392157, 1.0 ],
                    "fontlink": 1,
                    "fontsize": 12.0,
                    "id": "obj-605",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 5909.999436378479, 914.9999127388, 40.685546875, 21.40625 ],
                    "presentation": 1,
                    "presentation_rect": [ 135.0, 317.96875, 40.685546875, 21.40625 ],
                    "text": "Stop",
                    "texton": "Stop"
                }
            },
            {
                "box": {
                    "id": "obj-604",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 7244.999309062958, 564.9999461174011, 35.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "id": "obj-602",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 6204.999408245087, 669.9999361038208, 33.0, 22.0 ],
                    "text": "== 0"
                }
            },
            {
                "box": {
                    "id": "obj-599",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 481.0, 377.83211475610733, 107.0, 22.0 ],
                    "text": "value folder_path3"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.08627450980392157, 0.08627450980392157, 0.08627450980392157, 1.0 ],
                    "fontlink": 1,
                    "fontsize": 12.0,
                    "id": "obj-598",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 481.0, 268.0, 107.3828125, 21.40625 ],
                    "presentation": 1,
                    "presentation_rect": [ 992.62109375, 555.46875, 107.3828125, 21.40625 ],
                    "text": "Load Sliced Files",
                    "texton": "Load Sliced Files"
                }
            },
            {
                "box": {
                    "id": "obj-597",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 8219.999216079712, 504.999951839447, 107.0, 22.0 ],
                    "text": "value folder_path3"
                }
            },
            {
                "box": {
                    "fontsize": 36.0,
                    "id": "obj-596",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 8999.999141693115, 299.9999713897705, 405.0, 47.0 ],
                    "text": "Long Sample processing"
                }
            },
            {
                "box": {
                    "id": "obj-595",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 7694.9992661476135, 839.9999198913574, 82.0, 22.0 ],
                    "text": "ignoreclick $1"
                }
            },
            {
                "box": {
                    "id": "obj-592",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "int" ],
                    "patching_rect": [ 7649.999270439148, 794.9999241828918, 66.96428507566452, 22.0 ],
                    "text": "t i i"
                }
            },
            {
                "box": {
                    "id": "obj-591",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 7649.999270439148, 899.9999141693115, 29.5, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-589",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 7649.999270439148, 839.9999198913574, 34.0, 22.0 ],
                    "text": "sel 1"
                }
            },
            {
                "box": {
                    "id": "obj-588",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 7649.999270439148, 744.9999289512634, 117.0, 22.0 ],
                    "text": "r short_long_sample"
                }
            },
            {
                "box": {
                    "id": "obj-587",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 9134.999128818512, 679.9999351501465, 113.0, 22.0 ],
                    "text": "r slice_duration_ms"
                }
            },
            {
                "box": {
                    "id": "obj-586",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 7179.999315261841, 994.9999051094055, 115.0, 22.0 ],
                    "text": "s slice_duration_ms"
                }
            },
            {
                "box": {
                    "id": "obj-585",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 8999.999141693115, 429.9999589920044, 119.0, 22.0 ],
                    "text": "r trigger_slicing_long"
                }
            },
            {
                "box": {
                    "id": "obj-584",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 6849.999346733093, 1109.9998941421509, 121.0, 22.0 ],
                    "text": "s trigger_slicing_long"
                }
            },
            {
                "box": {
                    "id": "obj-583",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 6739.999357223511, 1029.9999017715454, 29.5, 22.0 ],
                    "text": "+ 1"
                }
            },
            {
                "box": {
                    "id": "obj-581",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 6719.999359130859, 989.9999055862427, 117.0, 22.0 ],
                    "text": "r short_long_sample"
                }
            },
            {
                "box": {
                    "id": "obj-582",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 6739.999357223511, 1069.9998979568481, 127.0, 22.0 ],
                    "text": "gate 2"
                }
            },
            {
                "box": {
                    "id": "obj-580",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 8999.999141693115, 519.9999504089355, 169.23077750205994, 22.0 ],
                    "text": "zl.reg @zlmaxsize 32767"
                }
            },
            {
                "box": {
                    "fontsize": 36.0,
                    "id": "obj-579",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 6719.999359130859, 904.9999136924744, 115.0, 47.0 ],
                    "text": "Slicing"
                }
            },
            {
                "box": {
                    "fontsize": 36.0,
                    "id": "obj-578",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 6804.999351024628, 304.99997091293335, 269.0, 47.0 ],
                    "text": "Novelty analysis"
                }
            },
            {
                "box": {
                    "fontsize": 36.0,
                    "id": "obj-577",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 8144.999223232269, 299.9999713897705, 257.0, 47.0 ],
                    "text": "Folder creation"
                }
            },
            {
                "box": {
                    "id": "obj-576",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 5964.99943113327, 154.9999852180481, 70.0, 22.0 ],
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "id": "obj-575",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 6569.999373435974, 279.99997329711914, 69.23077261447906, 22.0 ],
                    "text": "t l l"
                }
            },
            {
                "box": {
                    "id": "obj-574",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 5869.999440193176, 394.9999623298645, 61.0, 22.0 ],
                    "text": "r file_type"
                }
            },
            {
                "box": {
                    "fontsize": 36.0,
                    "id": "obj-573",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 5909.999436378479, 849.9999189376831, 257.0, 47.0 ],
                    "text": "Sample playout"
                }
            },
            {
                "box": {
                    "id": "obj-572",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 6204.999408245087, 629.9999399185181, 117.0, 22.0 ],
                    "text": "r short_long_sample"
                }
            },
            {
                "box": {
                    "id": "obj-570",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 6204.999408245087, 714.9999318122864, 162.30770778656006, 22.0 ],
                    "text": "gate"
                }
            },
            {
                "box": {
                    "id": "obj-569",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 5964.99943113327, 349.9999666213989, 119.0, 22.0 ],
                    "text": "s short_long_sample"
                }
            },
            {
                "box": {
                    "id": "obj-568",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 9284.999114513397, 374.99996423721313, 61.0, 22.0 ],
                    "text": "r file_path"
                }
            },
            {
                "box": {
                    "id": "obj-567",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 6569.999373435974, 409.999960899353, 63.0, 22.0 ],
                    "text": "s file_path"
                }
            },
            {
                "box": {
                    "id": "obj-566",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 9149.999127388, 374.99996423721313, 61.0, 22.0 ],
                    "text": "r file_type"
                }
            },
            {
                "box": {
                    "id": "obj-565",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 6704.999360561371, 254.99997568130493, 63.0, 22.0 ],
                    "text": "s file_type"
                }
            },
            {
                "box": {
                    "id": "obj-563",
                    "maxclass": "tab",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 5964.99943113327, 189.999981880188, 200.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 444.04761481285095, 179.16666495800018, 133.33333611488342, 24.113475680351257 ],
                    "tabs": [ "Short", "Long" ]
                }
            },
            {
                "box": {
                    "id": "obj-505",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 8999.999141693115, 864.9999175071716, 111.0, 22.0 ],
                    "text": "bach.sieve @out m"
                }
            },
            {
                "box": {
                    "id": "obj-506",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 9091.999141693115, 944.9999098777771, 32.0, 22.0 ],
                    "text": "> 50"
                }
            },
            {
                "box": {
                    "id": "obj-507",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 9091.999141693115, 905.6818095445633, 108.0, 22.0 ],
                    "text": "ears.info~ duration"
                }
            },
            {
                "box": {
                    "id": "obj-509",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 34.0, 115.0, 1358.0, 723.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-60",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 321.34834027290344, 600.0000479221344, 57.0, 22.0 ],
                                    "text": "tosymbol"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-58",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "int" ],
                                    "patching_rect": [ 140.0, 541.5730769634247, 138.0, 22.0 ],
                                    "text": "conformpath max boot"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-31",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "int" ],
                                    "patching_rect": [ 321.0, 558.4270108938217, 138.0, 22.0 ],
                                    "text": "conformpath max boot"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-57",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 77.52809607982635, 553.9326285123825, 43.0, 22.0 ],
                                    "text": "zlclear"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-54",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 140.0, 612.3595994710922, 156.0, 22.0 ],
                                    "text": "zl.group @zlmaxsize 32767"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-53",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 139.32585382461548, 507.8652091026306, 57.0, 22.0 ],
                                    "text": "tosymbol"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-52",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 140.0, 421.0, 103.0, 22.0 ],
                                    "text": "join 2 @triggers 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-51",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "bang" ],
                                    "patching_rect": [ 140.44944941997528, 259.0, 178.65169966220856, 22.0 ],
                                    "text": "t s s b"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-50",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 140.0, 462.0, 78.0, 22.0 ],
                                    "text": "sprintf %s%s"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-44",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 140.0, 362.0, 79.0, 22.0 ],
                                    "text": "route append"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-40",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 836.0, 565.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-38",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 867.0, 513.0, 47.0, 22.0 ],
                                    "text": "filepath"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-106",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 23.0, 259.0, 92.0, 22.0 ],
                                    "text": "loadmess types"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "int" ],
                                    "patching_rect": [ 140.0, 311.0, 39.0, 22.0 ],
                                    "text": "folder"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-2",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 140.0, 707.8652250766754, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-79",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 187.0, 129.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-80",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 187.0, 175.0, 29.5, 22.0 ],
                                    "text": "2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-81",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 140.0, 178.0, 29.5, 22.0 ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-82",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 140.0, 220.0, 200.0, 22.0 ],
                                    "text": "gate 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-83",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 140.0, 96.0, 65.23656117916107, 22.0 ],
                                    "text": "sel fold"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-84",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 140.0, 36.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-85",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 321.0, 36.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-106", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-44", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 1 ],
                                    "midpoints": [ 169.5, 348.69921875, 286.5, 348.69921875 ],
                                    "source": [ "obj-3", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-60", 0 ],
                                    "source": [ "obj-31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-40", 1 ],
                                    "source": [ "obj-38", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-52", 1 ],
                                    "midpoints": [ 149.5, 401.5, 233.5, 401.5 ],
                                    "source": [ "obj-44", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-53", 0 ],
                                    "source": [ "obj-50", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-51", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-52", 0 ],
                                    "midpoints": [ 229.77529925107956, 392.3984375, 149.5, 392.3984375 ],
                                    "source": [ "obj-51", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-57", 0 ],
                                    "midpoints": [ 309.60114908218384, 495.19191737426445, 87.02809607982635, 495.19191737426445 ],
                                    "source": [ "obj-51", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "source": [ "obj-52", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-58", 0 ],
                                    "source": [ "obj-53", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-54", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "midpoints": [ 87.02809607982635, 603.7279041511938, 149.5, 603.7279041511938 ],
                                    "source": [ "obj-57", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "source": [ "obj-58", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "midpoints": [ 330.84834027290344, 680.285266910214, 149.5, 680.285266910214 ],
                                    "source": [ "obj-60", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-80", 0 ],
                                    "source": [ "obj-79", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-82", 0 ],
                                    "source": [ "obj-80", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-82", 0 ],
                                    "source": [ "obj-81", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-31", 0 ],
                                    "source": [ "obj-82", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-51", 0 ],
                                    "source": [ "obj-82", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-79", 0 ],
                                    "source": [ "obj-83", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-81", 0 ],
                                    "source": [ "obj-83", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-83", 0 ],
                                    "source": [ "obj-84", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-82", 1 ],
                                    "source": [ "obj-85", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "packagemanager" ]
                    },
                    "patching_rect": [ 9149.999127388, 429.9999589920044, 152.74726021289825, 22.0 ],
                    "text": "p"
                }
            },
            {
                "box": {
                    "id": "obj-510",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 5914.999435901642, 469.99995517730713, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-511",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 5914.999435901642, 514.9999508857727, 29.5, 22.0 ],
                    "text": "2"
                }
            },
            {
                "box": {
                    "id": "obj-512",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 5869.999440193176, 514.9999508857727, 29.5, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "obj-513",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 5869.999440193176, 559.9999465942383, 137.63441467285156, 22.0 ],
                    "text": "gate 2"
                }
            },
            {
                "box": {
                    "id": "obj-514",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 5869.999440193176, 434.99995851516724, 66.0, 22.0 ],
                    "text": "sel fold"
                }
            },
            {
                "box": {
                    "id": "obj-516",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 8999.999141693115, 964.9999079704285, 81.0, 22.0 ],
                    "text": "t l l"
                }
            },
            {
                "box": {
                    "id": "obj-517",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "int" ],
                    "patching_rect": [ 9349.999108314514, 789.999924659729, 141.2018140554428, 22.0 ],
                    "text": "t b i"
                }
            },
            {
                "box": {
                    "id": "obj-519",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "int" ],
                    "patching_rect": [ 9349.999108314514, 834.9999203681946, 140.92877984046936, 22.0 ],
                    "text": "uzi 10"
                }
            },
            {
                "box": {
                    "id": "obj-521",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 9299.999113082886, 999.9999046325684, 119.90016496181488, 22.0 ],
                    "saved_object_attributes": {
                        "versionnumber": 80300
                    },
                    "text": "bach.collect @out m"
                }
            },
            {
                "box": {
                    "id": "obj-522",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 9149.999127388, 474.99995470046997, 163.73627173900604, 22.0 ],
                    "text": "t l b"
                }
            },
            {
                "box": {
                    "id": "obj-525",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 9474.999096393585, 884.999915599823, 117.0, 22.0 ],
                    "text": "sprintf slice_%d.wav"
                }
            },
            {
                "box": {
                    "id": "obj-528",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 5869.999440193176, 644.9999384880066, 57.0, 22.0 ],
                    "text": "tosymbol"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-529",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 5984.999429225922, 589.9999437332153, 133.0, 23.0 ],
                    "saved_object_attributes": {
                        "legacyoutputorder": 0
                    },
                    "text": "regexp ^(.*/)[^/]+$ %1"
                }
            },
            {
                "box": {
                    "id": "obj-548",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "int" ],
                    "patching_rect": [ 5869.999440193176, 684.9999346733093, 128.0, 22.0 ],
                    "text": "conformpath max boot"
                }
            },
            {
                "box": {
                    "id": "obj-549",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 5924.9994349479675, 749.9999284744263, 107.0, 22.0 ],
                    "text": "value folder_path2"
                }
            },
            {
                "box": {
                    "id": "obj-553",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 9349.999108314514, 884.999915599823, 107.0, 22.0 ],
                    "text": "value folder_path2"
                }
            },
            {
                "box": {
                    "id": "obj-554",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 8999.999141693115, 799.9999237060547, 218.0, 22.0 ],
                    "text": "ears.fade~ 0.05 0.05 @timeunit relative"
                }
            },
            {
                "box": {
                    "id": "obj-555",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 9349.999108314514, 964.9999079704285, 57.0, 22.0 ],
                    "text": "tosymbol"
                }
            },
            {
                "box": {
                    "id": "obj-556",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 9349.999108314514, 929.9999113082886, 141.21658098697662, 22.0 ],
                    "text": "sprintf %ssliced/%s"
                }
            },
            {
                "box": {
                    "id": "obj-557",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 8999.999141693115, 1059.9998989105225, 141.0, 22.0 ],
                    "text": "ears.write~"
                }
            },
            {
                "box": {
                    "id": "obj-558",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 8999.999141693115, 729.9999303817749, 240.86022567749023, 35.0 ],
                    "text": "ears.split~ @mode duration @timeunit milliseconds @partials 1"
                }
            },
            {
                "box": {
                    "id": "obj-561",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 8999.999141693115, 574.9999451637268, 108.0, 22.0 ],
                    "text": "ears.read~ @iter 1"
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "id": "obj-86",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 5509.999474525452, 149.99998569488525, 79.09090626239777, 2129.0908329486847 ],
                    "proportion": 0.5
                }
            },
            {
                "box": {
                    "floatoutput": 1,
                    "id": "obj-137",
                    "knobshape": 4,
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "orientation": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 6579.9993724823, 1614.999845981598, 207.0, 34.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 563.28125, 307.03125, 85.05746984481812, 12.068965315818787 ],
                    "size": 1.0
                }
            },
            {
                "box": {
                    "id": "obj-136",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 6519.999378204346, 1654.9998421669006, 55.0, 33.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 717.1875, 303.125, 69.0, 20.0 ],
                    "text": "% progress"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-132",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 6459.999383926392, 1654.9998421669006, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 658.59375, 302.34375, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-94",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 6459.999383926392, 1614.999845981598, 40.0, 22.0 ],
                    "text": "* 100."
                }
            },
            {
                "box": {
                    "id": "obj-108",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 59.0, 106.0, 1000.0, 700.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 222.0, 499.0, 34.0, 22.0 ],
                                    "text": "sel 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 222.0, 536.0, 231.0, 22.0 ],
                                    "text": "\"sample length < 50 ms, sample dropped\""
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 222.0, 578.0, 32.0, 22.0 ],
                                    "text": "print"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 490.0, 536.0, 85.0, 22.0 ],
                                    "text": "/ 1."
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-2",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 490.0, 589.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-1",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 589.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 187.0, 100.0, 69.0, 22.0 ],
                                    "text": "t l l"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-44",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 50.0, 497.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-57",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 51.0, 438.0, 34.0, 22.0 ],
                                    "text": "sel 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-59",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 51.0, 397.0, 55.0, 22.0 ],
                                    "text": "=="
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-80",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 237.0, 147.0, 37.0, 22.0 ],
                                    "text": "zl.len"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-108",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 222.0, 456.0, 32.0, 22.0 ],
                                    "text": "> 50"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-109",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 536.0, 117.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "versionnumber": 80300
                                    },
                                    "text": "bach.collect @out m"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-110",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 112.0, 276.0, 66.0, 22.0 ],
                                    "text": "t s s"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-111",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 99.0, 498.0, 32.0, 22.0 ],
                                    "text": "gate"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-114",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 51.0, 241.0, 141.0, 22.0 ],
                                    "text": "unjoin 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-115",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "list" ],
                                    "patching_rect": [ 51.0, 202.0, 66.0, 22.0 ],
                                    "text": "listfunnel 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-116",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 159.0, 319.0, 59.0, 22.0 ],
                                    "text": "t b s"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-117",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 199.0, 371.0, 41.0, 22.0 ],
                                    "text": "set $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-119",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 10,
                                    "outlettype": [ "float", "list", "float", "float", "float", "float", "float", "", "int", "" ],
                                    "patching_rect": [ 159.0, 418.0, 113.5, 22.0 ],
                                    "text": "info~"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-123",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 187.0, 40.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "order": 0,
                                    "source": [ "obj-108", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-111", 0 ],
                                    "midpoints": [ 231.5, 487.3671875, 108.5, 487.3671875 ],
                                    "order": 1,
                                    "source": [ "obj-108", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-109", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-111", 1 ],
                                    "source": [ "obj-110", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-116", 0 ],
                                    "source": [ "obj-110", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-109", 1 ],
                                    "source": [ "obj-111", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-110", 0 ],
                                    "source": [ "obj-114", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "midpoints": [ 60.5, 269.890625, 499.5, 269.890625 ],
                                    "order": 0,
                                    "source": [ "obj-114", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-59", 0 ],
                                    "order": 1,
                                    "source": [ "obj-114", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-114", 0 ],
                                    "source": [ "obj-115", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-117", 0 ],
                                    "source": [ "obj-116", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-119", 0 ],
                                    "source": [ "obj-116", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-119", 0 ],
                                    "source": [ "obj-117", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-108", 0 ],
                                    "source": [ "obj-119", 6 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-29", 0 ],
                                    "source": [ "obj-123", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-115", 0 ],
                                    "midpoints": [ 196.5, 162.0, 60.5, 162.0 ],
                                    "source": [ "obj-29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-80", 0 ],
                                    "source": [ "obj-29", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-109", 0 ],
                                    "source": [ "obj-44", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-44", 0 ],
                                    "source": [ "obj-57", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-57", 0 ],
                                    "source": [ "obj-59", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 1 ],
                                    "midpoints": [ 246.5, 217.43359375, 565.5, 217.43359375 ],
                                    "order": 0,
                                    "source": [ "obj-80", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-59", 1 ],
                                    "midpoints": [ 246.5, 360.08984375, 96.5, 360.08984375 ],
                                    "order": 1,
                                    "source": [ "obj-80", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "packagemanager" ]
                    },
                    "patching_rect": [ 6709.999360084534, 1499.9998569488525, 81.0, 22.0 ],
                    "text": "p length_filter"
                }
            },
            {
                "box": {
                    "id": "obj-135",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 6944.999337673187, 454.9999566078186, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 309.7869213819504, 419.09089410305023, 71.0, 20.0 ],
                    "text": "zoom factor"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.08627450980392157, 0.08627450980392157, 0.08627450980392157, 1.0 ],
                    "fontlink": 1,
                    "fontsize": 12.0,
                    "id": "obj-138",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 5984.999429225922, 914.9999127388, 81.361328125, 21.40625 ],
                    "presentation": 1,
                    "presentation_rect": [ 42.1875, 317.96875, 81.361328125, 21.40625 ],
                    "text": "Play sample",
                    "texton": "Play sample"
                }
            },
            {
                "box": {
                    "id": "obj-139",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 6274.9994015693665, 989.9999055862427, 29.5, 22.0 ],
                    "text": "i"
                }
            },
            {
                "box": {
                    "id": "obj-140",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "start", "bang" ],
                    "patching_rect": [ 5984.999429225922, 949.9999094009399, 49.0, 22.0 ],
                    "text": "t start b"
                }
            },
            {
                "box": {
                    "id": "obj-141",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 6684.9993624687195, 474.99995470046997, 54.0, 22.0 ],
                    "text": "deferlow"
                }
            },
            {
                "box": {
                    "id": "obj-142",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 7399.999294281006, 994.9999051094055, 92.0, 22.0 ],
                    "text": "s marker_dump"
                }
            },
            {
                "box": {
                    "id": "obj-147",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "int" ],
                    "patching_rect": [ 7489.999285697937, 944.9999098777771, 29.5, 22.0 ],
                    "text": "t b i"
                }
            },
            {
                "box": {
                    "id": "obj-149",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 6684.9993624687195, 434.99995851516724, 90.0, 22.0 ],
                    "text": "r marker_dump"
                }
            },
            {
                "box": {
                    "id": "obj-151",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "int" ],
                    "patching_rect": [ 7329.999300956726, 944.9999098777771, 29.5, 22.0 ],
                    "text": "t b i"
                }
            },
            {
                "box": {
                    "id": "obj-162",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 7484.999286174774, 1109.9998941421509, 76.0, 22.0 ],
                    "text": "r buffer_load"
                }
            },
            {
                "box": {
                    "id": "obj-165",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 6394.999390125275, 779.9999256134033, 78.0, 22.0 ],
                    "text": "s buffer_load"
                }
            },
            {
                "box": {
                    "id": "obj-171",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 6984.99933385849, 779.9999256134033, 77.0, 22.0 ],
                    "text": "r slice_mode"
                }
            },
            {
                "box": {
                    "id": "obj-173",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 7024.999330043793, 894.9999146461487, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-174",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 7024.999330043793, 854.999918460846, 29.5, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-175",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 6984.99933385849, 854.999918460846, 29.5, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "obj-176",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 6984.99933385849, 819.999921798706, 57.0, 22.0 ],
                    "text": "sel 2"
                }
            },
            {
                "box": {
                    "id": "obj-180",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 7024.999330043793, 939.9999103546143, 59.0, 22.0 ],
                    "text": "gate"
                }
            },
            {
                "box": {
                    "id": "obj-185",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 7834.999252796173, 999.9999046325684, 79.0, 22.0 ],
                    "text": "s slice_mode"
                }
            },
            {
                "box": {
                    "id": "obj-245",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 365.0, 105.0, 727.0, 779.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-614",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 549.0, 790.0, 29.5, 22.0 ],
                                    "text": "+ 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-615",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 549.0, 748.0, 117.0, 22.0 ],
                                    "text": "r short_long_sample"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-616",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 549.0, 825.0, 74.01676428318024, 22.0 ],
                                    "text": "gate 2"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-65",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1062.9402730464935, 23.880596160888672, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-62",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 1101.49249792099, 305.9701383113861, 59.0909069776535, 22.0 ],
                                    "text": "/ 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-61",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1101.49249792099, 347.7611815929413, 117.0, 22.0 ],
                                    "text": "prepend setSliceDur"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-60",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 1102.9850351810455, 264.17909502983093, 29.5, 22.0 ],
                                    "text": "i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-49",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "bang", "bang", "int", "bang" ],
                                    "patching_rect": [ 1062.686529159546, 165.67163586616516, 137.27272236347198, 22.0 ],
                                    "text": "t b b i b"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-40",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 789.5522105693817, 322.38804817199707, 44.595241487026215, 22.0 ],
                                    "text": "* 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-41",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 789.5522105693817, 237.31342434883118, 45.0, 22.0 ],
                                    "text": "/ 1000."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-42",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 747.7611672878265, 470.1492369174957, 117.0, 22.0 ],
                                    "text": "prepend setSliceDur"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-30",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 711.9402730464935, 1014.9253368377686, 54.0, 22.0 ],
                                    "text": "deferlow"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-35",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 711.9402730464935, 1064.1790664196014, 126.0, 22.0 ],
                                    "text": "s no_novelty_markers"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-37",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 711.9402730464935, 971.6417562961578, 117.70832884311676, 22.0 ],
                                    "text": "t b l"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-38",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "buffer" ],
                                    "patching_rect": [ 810.4477322101593, 1014.9253368377686, 223.0, 22.0 ],
                                    "text": "fluid.list2buf @destination novelty_slices"
                                }
                            },
                            {
                                "box": {
                                    "code": "\r\n\r\nlet sampDurInSamps = 44100;\r\nlet sliceDurInSamps = 4410;\r\n\r\n\r\n\r\nfunction bang() {\r\n    let markers = [];\r\n    let chunkPos = 0;\r\n    \r\n    while(chunkPos <= sampDurInSamps) {\r\n        markers.push(chunkPos);\r\n        chunkPos += sliceDurInSamps;\r\n    }\r\n    //post('\\nmarkers are: ', markers);   \r\n    outlet(0, markers);\r\n}\r\n    \r\nfunction setSliceDur(n){\r\n    sliceDurInSamps = n;\r\n    //post('\\n Total slice duration in samples is: ', sliceDurInSamps);\r\n}\r\n\r\nfunction setSampDurInSamps(n){\r\n    sampDurInSamps = n;\r\n    //post('\\n Total duration in samples is: ', sampDurInSamps); \r\n}",
                                    "filename": "none",
                                    "fontface": 0,
                                    "fontname": "Menlo",
                                    "fontsize": 12.0,
                                    "id": "obj-39",
                                    "maxclass": "v8.codebox",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 711.9402730464935, 626.8656492233276, 582.0, 324.0 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0
                                    }
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "bang", "int", "bang" ],
                                    "patching_rect": [ 711.9402730464935, 165.67163586616516, 172.73593199253082, 22.0 ],
                                    "text": "t b i b"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 865.6716108322144, 389.55222487449646, 170.0, 22.0 ],
                                    "text": "prepend setSampDurInSamps"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 865.6716108322144, 322.38804817199707, 29.5, 22.0 ],
                                    "text": "* 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 934.3283247947693, 282.08954215049744, 45.0, 22.0 ],
                                    "text": "/ 1000."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 10,
                                    "outlettype": [ "float", "list", "float", "float", "float", "float", "float", "", "int", "" ],
                                    "patching_rect": [ 865.6716108322144, 237.31342434883118, 121.0, 22.0 ],
                                    "text": "info~ current_sample"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 711.9402730464935, 80.59701204299927, 29.5, 22.0 ],
                                    "text": "+ 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 711.9402730464935, 117.91044354438782, 370.0, 22.0 ],
                                    "text": "gate 2"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-4",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 711.9402730464935, 23.880596160888672, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-39", 0 ],
                                    "midpoints": [ 875.1716108322144, 588.8256562589668, 721.4402730464935, 588.8256562589668 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "order": 1,
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-60", 1 ],
                                    "midpoints": [ 875.1716108322144, 354.15848755836487, 1015.7608001101762, 354.15848755836487, 1015.7608001101762, 255.68152248859406, 1122.9850351810455, 255.68152248859406 ],
                                    "order": 0,
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 1 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "order": 0,
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "source": [ "obj-18", 6 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-40", 1 ],
                                    "midpoints": [ 875.1716108322144, 290.19273722171783, 824.6474520564079, 290.19273722171783 ],
                                    "order": 1,
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-19", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-39", 0 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-41", 0 ],
                                    "source": [ "obj-19", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-49", 0 ],
                                    "source": [ "obj-3", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-35", 0 ],
                                    "source": [ "obj-30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "source": [ "obj-37", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-38", 0 ],
                                    "source": [ "obj-37", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 0 ],
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-42", 0 ],
                                    "midpoints": [ 799.0522105693817, 442.32411942770705, 757.2611672878265, 442.32411942770705 ],
                                    "source": [ "obj-40", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-40", 0 ],
                                    "source": [ "obj-41", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-39", 0 ],
                                    "midpoints": [ 757.2611672878265, 559.035174369812, 721.4402730464935, 559.035174369812 ],
                                    "source": [ "obj-42", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "midpoints": [ 1190.4592515230179, 212.39821338653564, 875.1716108322144, 212.39821338653564 ],
                                    "source": [ "obj-49", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-39", 0 ],
                                    "midpoints": [ 1072.186529159546, 588.4855222715996, 721.4402730464935, 588.4855222715996 ],
                                    "source": [ "obj-49", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-60", 0 ],
                                    "source": [ "obj-49", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-62", 1 ],
                                    "source": [ "obj-49", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-62", 0 ],
                                    "source": [ "obj-60", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-39", 0 ],
                                    "midpoints": [ 1110.99249792099, 589.3760823756456, 721.4402730464935, 589.3760823756456 ],
                                    "source": [ "obj-61", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-616", 0 ],
                                    "source": [ "obj-614", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-614", 0 ],
                                    "source": [ "obj-615", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-61", 0 ],
                                    "source": [ "obj-62", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 1 ],
                                    "source": [ "obj-65", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "packagemanager" ]
                    },
                    "patching_rect": [ 7929.999243736267, 1039.999900817871, 150.95266610383987, 22.0 ],
                    "text": "p marker_gen"
                }
            },
            {
                "box": {
                    "id": "obj-273",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 6834.999348163605, 484.99995374679565, 124.0, 22.0 ],
                    "text": "r no_novelty_markers"
                }
            },
            {
                "box": {
                    "id": "obj-276",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 7339.999300003052, 994.9999051094055, 45.0, 22.0 ],
                    "text": "/ 1000."
                }
            },
            {
                "box": {
                    "id": "obj-280",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 10,
                    "outlettype": [ "float", "list", "float", "float", "float", "float", "float", "", "int", "" ],
                    "patching_rect": [ 7484.999286174774, 1149.9998903274536, 121.0, 22.0 ],
                    "text": "info~ current_sample"
                }
            },
            {
                "box": {
                    "id": "obj-282",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 7339.999300003052, 1059.9998989105225, 75.0, 22.0 ],
                    "text": "* 1."
                }
            },
            {
                "box": {
                    "id": "obj-289",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 7004.999331951141, 1329.999873161316, 107.0, 22.0 ],
                    "text": "value folder_path2"
                }
            },
            {
                "box": {
                    "id": "obj-305",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 6359.999393463135, 944.9999098777771, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 113.46875232458115, 289.35826460520434, 121.0, 20.0 ],
                    "text": "sample duration (ms)"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-329",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 6299.999399185181, 939.9999103546143, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 41.53749951720238, 288.3582646052043, 64.80000096559525, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-336",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 8149.999222755432, 394.9999623298645, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-342",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 7369.999297142029, 1319.9998741149902, 32.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-343",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 7304.999303340912, 1359.999870300293, 109.61538827419281, 35.0 ],
                    "text": "store marker \"duration (ms)\""
                }
            },
            {
                "box": {
                    "id": "obj-344",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 7434.999290943146, 1359.999870300293, 35.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "id": "obj-345",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 7699.999265670776, 1164.9998888969421, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-346",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 7699.999265670776, 1234.999882221222, 80.0, 22.0 ],
                    "text": "refer markers"
                }
            },
            {
                "box": {
                    "id": "obj-347",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 7284.9993052482605, 1149.9998903274536, 156.04131734371185, 22.0 ],
                    "text": "t l b"
                }
            },
            {
                "box": {
                    "id": "obj-348",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 7284.9993052482605, 1234.999882221222, 221.0, 22.0 ],
                    "text": "vexpr ($f1 / $f2) * 1000. @scalarmode 1"
                }
            },
            {
                "box": {
                    "id": "obj-349",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "list" ],
                    "patching_rect": [ 7284.9993052482605, 1279.9998779296875, 66.0, 22.0 ],
                    "text": "listfunnel 1"
                }
            },
            {
                "box": {
                    "id": "obj-350",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 7284.9993052482605, 1444.9998621940613, 73.0, 22.0 ],
                    "saved_object_attributes": {
                        "embed": 0,
                        "precision": 6
                    },
                    "text": "coll markers"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.17254901960784313, 0.17254901960784313, 0.17254901960784313, 1.0 ],
                    "border": 0,
                    "bordercolor": [ 0.17254901960784313, 0.17254901960784313, 0.17254901960784313, 1.0 ],
                    "colhead": 1,
                    "cols": 2,
                    "colwidth": 65,
                    "fgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 10.0,
                    "gridlinecolor": [ 0.4823529411764706, 0.4823529411764706, 0.4823529411764706, 1.0 ],
                    "hcellcolor": [ 1.0, 0.4666666666666667, 0.16862745098039217, 1.0 ],
                    "headercolor": [ 0.25098039215686274, 0.24705882352941178, 0.24705882352941178, 1.0 ],
                    "hscroll": 0,
                    "id": "obj-351",
                    "just": 1,
                    "maxclass": "jit.cellblock",
                    "numinlets": 2,
                    "numoutlets": 4,
                    "outlettype": [ "list", "", "", "" ],
                    "outmode": 1,
                    "patching_rect": [ 7699.999265670776, 1269.9998788833618, 160.90224134922028, 193.23306554555893 ],
                    "precision": 0,
                    "presentation": 1,
                    "presentation_rect": [ 630.6960008144379, 447.27271127700806, 146.15385103225708, 127.88461965322495 ],
                    "readonly": 1,
                    "rowhead": 1,
                    "rows": 5,
                    "sccolor": [ 0.25098039215686274, 0.24705882352941178, 0.24705882352941178, 1.0 ],
                    "selmode": 0,
                    "sgcolor": [ 1.0, 0.467, 0.169, 1.0 ],
                    "stcolor": [ 1.0, 0.467, 0.169, 1.0 ],
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-352",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 59.0, 106.0, 1000.0, 700.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 264.0, 100.0, 35.0, 22.0 ],
                                    "text": "set 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 455.0, 132.0, 101.0, 22.0 ],
                                    "text": "prepend textcolor"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 139.0, 132.0, 101.0, 22.0 ],
                                    "text": "prepend textcolor"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-141",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 139.0, 100.0, 119.0, 22.0 ],
                                    "text": "0.459 0.459 0.459 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-139",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 455.0, 100.0, 119.0, 22.0 ],
                                    "text": "0.902 0.902 0.902 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-136",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 357.0, 100.0, 75.0, 22.0 ],
                                    "text": "ignoreclick 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-137",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 100.0, 75.0, 22.0 ],
                                    "text": "ignoreclick 1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-146",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 50.0000499625703, 39.999990240600596, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-147",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 357.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-148",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 209.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-148", 0 ],
                                    "midpoints": [ 464.5, 164.4999951203003, 59.5, 164.4999951203003 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-148", 0 ],
                                    "midpoints": [ 366.5, 164.4999951203003, 59.5, 164.4999951203003 ],
                                    "source": [ "obj-136", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-148", 0 ],
                                    "source": [ "obj-137", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-139", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-141", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-137", 0 ],
                                    "order": 2,
                                    "source": [ "obj-146", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-141", 0 ],
                                    "midpoints": [ 59.5000499625703, 84.9999951203003, 148.5, 84.9999951203003 ],
                                    "order": 1,
                                    "source": [ "obj-146", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "midpoints": [ 59.5000499625703, 84.9999951203003, 273.5, 84.9999951203003 ],
                                    "order": 0,
                                    "source": [ "obj-146", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-136", 0 ],
                                    "order": 1,
                                    "source": [ "obj-147", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-139", 0 ],
                                    "midpoints": [ 366.5, 85.0000048796997, 464.5, 85.0000048796997 ],
                                    "order": 0,
                                    "source": [ "obj-147", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-148", 0 ],
                                    "midpoints": [ 148.5, 165.5, 59.5, 165.5 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-148", 0 ],
                                    "midpoints": [ 273.5, 165.5, 59.5, 165.5 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "packagemanager" ]
                    },
                    "patching_rect": [ 7489.999285697937, 869.9999170303345, 90.517242, 22.0 ],
                    "text": "p"
                }
            },
            {
                "box": {
                    "id": "obj-353",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 59.0, 106.0, 1000.0, 700.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 271.0, 100.0, 35.0, 22.0 ],
                                    "text": "set 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 423.0, 130.0, 101.0, 22.0 ],
                                    "text": "prepend textcolor"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 140.0, 130.0, 101.0, 22.0 ],
                                    "text": "prepend textcolor"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-141",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 140.0, 100.0, 119.0, 22.0 ],
                                    "text": "0.459 0.459 0.459 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-139",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 422.0, 99.9999902406006, 119.0, 22.0 ],
                                    "text": "0.902 0.902 0.902 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-135",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 338.0, 99.9999902406006, 75.0, 22.0 ],
                                    "text": "ignoreclick 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-134",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 100.0, 75.0, 22.0 ],
                                    "text": "ignoreclick 1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-142",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 50.0, 39.999990240600596, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-143",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 338.0, 39.999990240600596, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-144",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 207.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-144", 0 ],
                                    "midpoints": [ 149.5, 164.5, 59.5, 164.5 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-144", 0 ],
                                    "source": [ "obj-134", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-144", 0 ],
                                    "midpoints": [ 347.5, 164.5, 59.5, 164.5 ],
                                    "source": [ "obj-135", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-139", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-141", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-134", 0 ],
                                    "order": 2,
                                    "source": [ "obj-142", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-141", 0 ],
                                    "midpoints": [ 59.5, 84.9999951203003, 149.5, 84.9999951203003 ],
                                    "order": 1,
                                    "source": [ "obj-142", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "midpoints": [ 59.5, 84.9999951203003, 280.5, 84.9999951203003 ],
                                    "order": 0,
                                    "source": [ "obj-142", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-135", 0 ],
                                    "order": 1,
                                    "source": [ "obj-143", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-139", 0 ],
                                    "midpoints": [ 347.5, 84.9999853609009, 431.5, 84.9999853609009 ],
                                    "order": 0,
                                    "source": [ "obj-143", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-144", 0 ],
                                    "midpoints": [ 432.5, 164.5, 59.5, 164.5 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-144", 0 ],
                                    "midpoints": [ 280.5, 163.11328125, 59.5, 163.11328125 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "packagemanager" ]
                    },
                    "patching_rect": [ 7329.999300956726, 869.9999170303345, 97.0, 22.0 ],
                    "text": "p"
                }
            },
            {
                "box": {
                    "id": "obj-354",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 4,
                    "outlettype": [ "bang", "bang", "bang", "" ],
                    "patching_rect": [ 7749.999260902405, 999.9999046325684, 78.35051107406616, 22.0 ],
                    "text": "sel 0 1 2"
                }
            },
            {
                "box": {
                    "fontsize": 18.0,
                    "id": "obj-355",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 197.52416336536407, 3544.827772140503, 218.0, 27.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 445.3125, 141.89653301239014, 98.0, 27.0 ],
                    "text": "Processing"
                }
            },
            {
                "box": {
                    "buffername": "current_sample",
                    "id": "obj-356",
                    "maxclass": "waveform~",
                    "numinlets": 5,
                    "numoutlets": 6,
                    "outlettype": [ "float", "float", "float", "float", "list", "" ],
                    "patching_rect": [ 6379.999391555786, 564.9999461174011, 267.0, 86.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 42.1875, 198.74777921040854, 271.7421875, 82.0 ],
                    "waveformcolor": [ 1.0, 0.4666666666666667, 0.16862745098039217, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-357",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 0.0, 0.0, 1000.0, 700.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-117",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 197.0, 210.0, 72.0, 22.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-116",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 109.0, 210.0, 72.0, 22.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-114",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 50.0, 100.0, 137.0, 22.0 ],
                                    "text": "route zoom zoom_offset"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-111",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 197.0, 177.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-109",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 109.0, 177.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-107",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 109.0, 136.0, 195.0, 22.0 ],
                                    "text": "unjoin 2"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-118",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-119",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 109.0, 292.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-120",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 197.0, 292.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-109", 0 ],
                                    "source": [ "obj-107", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-111", 0 ],
                                    "source": [ "obj-107", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-116", 0 ],
                                    "source": [ "obj-109", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-117", 0 ],
                                    "source": [ "obj-111", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-107", 0 ],
                                    "source": [ "obj-114", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-119", 0 ],
                                    "source": [ "obj-116", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-120", 0 ],
                                    "source": [ "obj-117", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-114", 0 ],
                                    "source": [ "obj-118", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 7189.9993143081665, 764.9999270439148, 130.0, 22.0 ],
                    "text": "p zoom_offset_handler"
                }
            },
            {
                "box": {
                    "id": "obj-358",
                    "maxclass": "tab",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 7649.999270439148, 944.9999098777771, 200.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 445.3125, 216.40625, 200.0, 24.0 ],
                    "tabs": [ "Duration", "Number", "List" ]
                }
            },
            {
                "box": {
                    "id": "obj-359",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 7649.999270439148, 999.9999046325684, 86.0, 22.0 ],
                    "text": "prepend mode"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.08627450980392157, 0.08627450980392157, 0.08627450980392157, 1.0 ],
                    "fontlink": 1,
                    "fontsize": 12.0,
                    "id": "obj-360",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 6699.999361038208, 504.999951839447, 105.14453125, 21.40625 ],
                    "presentation": 1,
                    "presentation_rect": [ 252.51419615745544, 584.54543364048, 105.14453125, 21.40625 ],
                    "text": "Validate Markers",
                    "texton": "Validate Markers"
                }
            },
            {
                "box": {
                    "attr": "algorithm",
                    "id": "obj-361",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 7159.999317169189, 354.99996614456177, 192.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 34.332385778427124, 447.27271127700806, 192.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "fftsettings",
                    "id": "obj-362",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 6964.999335765839, 354.99996614456177, 172.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 34.332385778427124, 506.36361825466156, 172.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-363",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 6364.999392986298, 519.9999504089355, 95.0, 22.0 ],
                    "text": "prepend replace"
                }
            },
            {
                "box": {
                    "bordercolor": [ 1.0, 0.4666666666666667, 0.16862745098039217, 1.0 ],
                    "id": "obj-364",
                    "maxclass": "dropfile",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 6569.999373435974, 129.9999876022339, 153.80008870363235, 44.00000065565109 ],
                    "presentation": 1,
                    "presentation_rect": [ 42.1875, 146.875, 143.836980342865, 44.26229381561279 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.08627450980392157, 0.08627450980392157, 0.08627450980392157, 1.0 ],
                    "fontlink": 1,
                    "fontsize": 12.0,
                    "id": "obj-365",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 6234.999405384064, 489.9999532699585, 114.7421875, 21.40625 ],
                    "presentation": 1,
                    "presentation_rect": [ 199.1875, 158.3030219078064, 114.7421875, 21.40625 ],
                    "text": "Load an audio File",
                    "texton": "Load an audio File"
                }
            },
            {
                "box": {
                    "fontsize": 18.0,
                    "id": "obj-366",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 163.04140293598175, 3682.758813858032, 218.0, 27.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 36.15056753158569, 417.27271234989166, 76.0, 27.0 ],
                    "text": "Analysis"
                }
            },
            {
                "box": {
                    "fontsize": 48.0,
                    "id": "obj-367",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 6039.999423980713, 44.999995708465576, 575.0, 60.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 278.90625, 35.15625, 265.0, 60.0 ],
                    "text": "Audio Slicer",
                    "textcolor": [ 1.0, 0.4666666666666667, 0.16862745098039217, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-368",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 7544.999280452728, 909.9999132156372, 66.0, 33.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 717.96875, 253.90625, 66.0, 33.0 ],
                    "text": "number of slices"
                }
            },
            {
                "box": {
                    "id": "obj-369",
                    "ignoreclick": 1,
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 7489.999285697937, 909.9999132156372, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 658.59375, 259.375, 50.0, 22.0 ],
                    "textcolor": [ 0.459, 0.459, 0.459, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-370",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 7189.9993143081665, 564.9999461174011, 46.0, 22.0 ],
                    "text": "refresh"
                }
            },
            {
                "box": {
                    "id": "obj-371",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 7224.999310970306, 469.99995517730713, 177.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 493.4232784509659, 419.09089410305023, 81.0, 20.0 ],
                    "text": "scroll position"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-372",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 7134.999319553375, 469.99995517730713, 91.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 434.3323714733124, 419.09089410305023, 51.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-373",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 7134.999319553375, 504.999951839447, 58.0, 22.0 ],
                    "text": "offset $1"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-374",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.001,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 7009.999331474304, 469.99995517730713, 91.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 252.51419615745544, 419.09089410305023, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-375",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 7009.999331474304, 504.999951839447, 58.0, 22.0 ],
                    "text": "zoom $1"
                }
            },
            {
                "box": {
                    "id": "obj-376",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 6739.999357223511, 1434.9998631477356, 114.0, 22.0 ],
                    "text": "ears.normalize~ 0.8"
                }
            },
            {
                "box": {
                    "id": "obj-377",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 6644.999366283417, 1334.9998726844788, 29.5, 22.0 ],
                    "text": "+ 1"
                }
            },
            {
                "box": {
                    "id": "obj-378",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 6709.999360084534, 1394.9998669624329, 52.0, 22.0 ],
                    "text": "gate 2 1"
                }
            },
            {
                "box": {
                    "id": "obj-379",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 6569.999373435974, 1269.9998788833618, 64.0, 33.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 492.96875, 297.65625, 64.0, 33.0 ],
                    "text": "normalize slices"
                }
            },
            {
                "box": {
                    "id": "obj-380",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 6644.999366283417, 1279.9998779296875, 36.0, 36.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 449.21875, 295.3125, 36.0, 36.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-381",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 6739.999357223511, 1334.9998726844788, 218.0, 22.0 ],
                    "text": "ears.fade~ 0.05 0.05 @timeunit relative"
                }
            },
            {
                "box": {
                    "id": "obj-382",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 8469.999192237854, 369.9999647140503, 63.0, 22.0 ],
                    "text": "closebang"
                }
            },
            {
                "box": {
                    "id": "obj-383",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 8469.999192237854, 409.999960899353, 107.0, 22.0 ],
                    "text": "value folder_path2"
                }
            },
            {
                "box": {
                    "id": "obj-384",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 8469.999192237854, 444.9999575614929, 95.0, 22.0 ],
                    "text": "sprintf %ssliced/"
                }
            },
            {
                "box": {
                    "id": "obj-385",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 8469.999192237854, 479.9999542236328, 98.0, 22.0 ],
                    "text": "prepend cleanup"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                    "activebgoncolor": [ 0.0, 0.854901960784314, 0.282352941176471, 1.0 ],
                    "id": "obj-386",
                    "maxclass": "live.toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 8289.999209403992, 779.9999256134033, 34.0, 32.5 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": "themecolor.live_control_selection"
                        },
                        "activebgoncolor": {
                            "expression": "themecolor.live_macro_assignment"
                        },
                        "valueof": {
                            "parameter_enum": [ "off", "on" ],
                            "parameter_longname": "live.toggle[3]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.toggle",
                            "parameter_type": 2
                        }
                    },
                    "varname": "live.toggle[1]"
                }
            },
            {
                "box": {
                    "id": "obj-387",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 6234.999405384064, 1069.9998979568481, 41.0, 22.0 ],
                    "text": "abs 0."
                }
            },
            {
                "box": {
                    "id": "obj-388",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 6234.999405384064, 1109.9998941421509, 33.0, 22.0 ],
                    "text": "- 20."
                }
            },
            {
                "box": {
                    "id": "obj-389",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 6234.999405384064, 1029.9999017715454, 29.5, 22.0 ],
                    "text": "- 0."
                }
            },
            {
                "box": {
                    "id": "obj-390",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 6084.9994196891785, 1229.999882698059, 169.23077750205994, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-391",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 6234.999405384064, 1144.9998908042908, 99.0, 22.0 ],
                    "text": "0, 1 10 1 $1 0 10"
                }
            },
            {
                "box": {
                    "id": "obj-392",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 6234.999405384064, 1179.9998874664307, 48.0, 22.0 ],
                    "text": "line~ 0."
                }
            },
            {
                "box": {
                    "id": "obj-394",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 6084.9994196891785, 1029.9999017715454, 79.0, 22.0 ],
                    "text": "prepend start"
                }
            },
            {
                "box": {
                    "id": "obj-395",
                    "local": 1,
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 6084.9994196891785, 1449.9998617172241, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-396",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 6084.9994196891785, 1284.9998774528503, 48.0, 136.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 328.0, 157.03125, 49.0, 180.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.gain~[1]",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.gain~",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~[1]"
                }
            },
            {
                "box": {
                    "id": "obj-397",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 6084.9994196891785, 989.9999055862427, 173.0, 22.0 ],
                    "text": "vexpr $f1 * $f2 @scalarmode 1"
                }
            },
            {
                "box": {
                    "id": "obj-398",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 10,
                    "outlettype": [ "float", "list", "float", "float", "float", "float", "float", "", "int", "" ],
                    "patching_rect": [ 6174.99941110611, 904.9999136924744, 121.0, 22.0 ],
                    "text": "info~ current_sample"
                }
            },
            {
                "box": {
                    "id": "obj-399",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 6084.9994196891785, 1179.9998874664307, 124.0, 22.0 ],
                    "text": "play~ current_sample"
                }
            },
            {
                "box": {
                    "id": "obj-405",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 8334.999205112457, 409.999960899353, 107.0, 22.0 ],
                    "text": "value folder_path2"
                }
            },
            {
                "box": {
                    "id": "obj-407",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 8399.999198913574, 734.9999299049377, 29.5, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-408",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 8399.999198913574, 699.9999332427979, 71.0, 22.0 ],
                    "text": "sel success"
                }
            },
            {
                "box": {
                    "id": "obj-409",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 8289.999209403992, 649.9999380111694, 243.0, 22.0 ],
                    "text": "route loadend stop"
                }
            },
            {
                "box": {
                    "id": "obj-410",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 8289.999209403992, 734.9999299049377, 29.5, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "obj-411",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 8289.999209403992, 699.9999332427979, 71.0, 22.0 ],
                    "text": "sel success"
                }
            },
            {
                "box": {
                    "id": "obj-412",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 8334.999205112457, 444.9999575614929, 95.0, 22.0 ],
                    "text": "sprintf %ssliced/"
                }
            },
            {
                "box": {
                    "id": "obj-413",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 8334.999205112457, 504.999951839447, 89.0, 22.0 ],
                    "text": "prepend create"
                }
            },
            {
                "box": {
                    "id": "obj-414",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 8064.999230861664, 439.9999580383301, 65.0, 22.0 ],
                    "text": "script stop"
                }
            },
            {
                "box": {
                    "id": "obj-415",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 8149.999222755432, 439.9999580383301, 66.0, 22.0 ],
                    "text": "script start"
                }
            },
            {
                "box": {
                    "id": "obj-416",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 8229.999215126038, 609.9999418258667, 79.0, 22.0 ],
                    "text": "route running"
                }
            },
            {
                "box": {
                    "id": "obj-417",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 8149.999222755432, 559.9999465942383, 100.0, 22.0 ],
                    "saved_object_attributes": {
                        "autostart": 0,
                        "defer": 0,
                        "node_bin_path": "",
                        "npm_bin_path": "",
                        "watch": 0
                    },
                    "text": "node.script",
                    "textfile": {
                        "text": "const maxApi = require(\"max-api\");\nconst fs = require(\"fs\");\nconst path = require(\"path\");\n\n// Handler for folder creation\nmaxApi.addHandler(\"create\", (...args) => {\n    const folderPath = args.join(\" \");\n    const resolved = path.resolve(folderPath);\n\n    if (!fs.existsSync(resolved)) {\n        fs.mkdirSync(resolved, { recursive: true });\n        maxApi.outlet(\"created\", resolved);\n    } else {\n        maxApi.outlet(\"exists\", resolved);\n    }\n});\n\n// Handler for cleanup — deletes the folder only if empty\nmaxApi.addHandler(\"cleanup\", (...args) => {\n    const folderPath = args.join(\" \");\n    const resolved = path.resolve(folderPath);\n\n    // If the folder doesn't exist, nothing to do\n    if (!fs.existsSync(resolved)) {\n        maxApi.outlet(\"not_found\", resolved);\n        return;\n    }\n\n    // Read the folder contents, ignoring hidden files like .DS_Store\n    const contents = fs.readdirSync(resolved).filter((filename) => {\n        return !filename.startsWith(\".\");\n    });\n\n    if (contents.length === 0) {\n        fs.rmSync(resolved, { recursive: true });\n        maxApi.outlet(\"deleted\", resolved);\n    } else {\n        maxApi.outlet(\"not_empty\", contents.length, resolved);\n    }\n});",
                        "flags": 2,
                        "embed": 1,
                        "autowatch": 0
                    }
                }
            },
            {
                "box": {
                    "id": "obj-418",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 7399.999294281006, 909.9999132156372, 66.0, 47.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 717.8571360111237, 217.1875, 72.0, 33.0 ],
                    "text": "slice length (ms)"
                }
            },
            {
                "box": {
                    "id": "obj-419",
                    "ignoreclick": 1,
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 7329.999300956726, 909.9999132156372, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 658.59375, 222.65625, 50.0, 22.0 ],
                    "textcolor": [ 0.459, 0.459, 0.459, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-420",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 6849.999346733093, 989.9999055862427, 100.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 449.21875, 260.9375, 100.0, 20.0 ],
                    "text": "Slice"
                }
            },
            {
                "box": {
                    "id": "obj-421",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 7004.999331951141, 1399.9998664855957, 57.0, 22.0 ],
                    "text": "tosymbol"
                }
            },
            {
                "box": {
                    "id": "obj-423",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 7004.999331951141, 1364.9998698234558, 140.12869918346405, 22.0 ],
                    "text": "sprintf %ssliced/%s"
                }
            },
            {
                "box": {
                    "id": "obj-424",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 6709.999360084534, 1564.9998507499695, 141.0, 22.0 ],
                    "text": "ears.write~"
                }
            },
            {
                "box": {
                    "id": "obj-425",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 6739.999357223511, 1149.9998903274536, 91.0, 22.0 ],
                    "text": "current_sample"
                }
            },
            {
                "box": {
                    "id": "obj-426",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 7059.999326705933, 839.9999198913574, 119.0, 22.0 ],
                    "text": "route markers region"
                }
            },
            {
                "box": {
                    "id": "obj-427",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 6684.9993624687195, 539.9999485015869, 69.0, 22.0 ],
                    "text": "getmarkers"
                }
            },
            {
                "box": {
                    "id": "obj-428",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 6739.999357223511, 1204.9998850822449, 238.66666666666674, 35.0 ],
                    "text": "ears.split~ @mode list @timeunit samples @partials 1 @blocking 0"
                }
            },
            {
                "box": {
                    "id": "obj-429",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 6769.999354362488, 349.9999666213989, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 36.15056753158569, 540.9090715646744, 63.0, 63.0 ]
                }
            },
            {
                "box": {
                    "attr": "threshold",
                    "id": "obj-430",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 6804.999351024628, 354.99996614456177, 150.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 34.332385778427124, 475.4545284509659, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-431",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 6804.999351024628, 539.9999485015869, 203.0, 22.0 ],
                    "text": "slices novelty_slices current_sample"
                }
            },
            {
                "box": {
                    "id": "obj-432",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "bang" ],
                    "patching_rect": [ 7424.99929189682, 374.99996423721313, 124.0, 22.0 ],
                    "text": "buffer~ novelty_slices"
                }
            },
            {
                "box": {
                    "id": "obj-433",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 6199.999408721924, 779.9999256134033, 179.0, 22.0 ],
                    "text": "clear, waveform current_sample"
                }
            },
            {
                "box": {
                    "filename": "lor.waveform.js",
                    "id": "obj-434",
                    "maxclass": "v8ui",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 6804.999351024628, 619.9999408721924, 404.0, 126.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 252.51419615745544, 447.27271127700806, 360.3448464870453, 127.5862135887146 ],
                    "textfile": {
                        "filename": "lor.waveform.js",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    },
                    "varname": "v8ui_AB"
                }
            },
            {
                "box": {
                    "id": "obj-435",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 6804.999351024628, 409.999960899353, 742.0, 22.0 ],
                    "text": "fluid.bufnoveltyslice~ @source current_sample @indices novelty_slices @fftsettings 4096 -1 -1 @algorithm 0 @filtersize 3 @threshold 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-436",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 6234.999405384064, 524.9999499320984, 48.0, 22.0 ],
                    "text": "replace"
                }
            },
            {
                "box": {
                    "id": "obj-437",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "bang" ],
                    "patching_rect": [ 6234.999405384064, 564.9999461174011, 132.0, 22.0 ],
                    "text": "buffer~ current_sample"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.08627450980392157, 0.08627450980392157, 0.08627450980392157, 1.0 ],
                    "fontlink": 1,
                    "fontsize": 12.0,
                    "id": "obj-187",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 272.99269926548004, 382.296875, 43.779296875, 21.40625 ],
                    "presentation": 1,
                    "presentation_rect": [ 995.3125, 528.125, 43.779296875, 21.40625 ],
                    "text": "Write",
                    "texton": "Write"
                }
            },
            {
                "box": {
                    "fontsize": 48.0,
                    "id": "obj-183",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 50.0, 14.0, 575.0, 60.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1049.109375, 34.9143083691597, 526.0, 60.0 ],
                    "text": "Audio Format and Stats",
                    "textcolor": [ 1.0, 0.4666666666666667, 0.16862745098039217, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 18.0,
                    "id": "obj-181",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 225.11037170886993, 3575.862256526947, 218.0, 27.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1243.75, 219.53125, 48.0, 27.0 ],
                    "text": "Filter"
                }
            },
            {
                "box": {
                    "filename": "column_numbers.js",
                    "id": "obj-161",
                    "maxclass": "v8ui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 195.62043690681458, 2094.160572707653, 255.4745573401451, 24.580305218696594 ],
                    "presentation": 1,
                    "presentation_rect": [ 1255.46875, 704.6875, 257.14285469055176, 24.67532444000244 ],
                    "textfile": {
                        "filename": "column_numbers.js",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    },
                    "varname": "v8ui_AA"
                }
            },
            {
                "box": {
                    "id": "obj-153",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 614.0, 1557.0, 46.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-327",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 977.0269618034363, 2745.9457626342773, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-325",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 636.6486020088196, 3055.0, 49.0, 22.0 ],
                    "text": "r reset_"
                }
            },
            {
                "box": {
                    "id": "obj-324",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 282.43241357803345, 2282.432280063629, 128.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-321",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 636.6486020088196, 3098.0, 35.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "id": "obj-300",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 698.6486020088196, 2906.7565627098083, 29.5, 22.0 ],
                    "text": "f"
                }
            },
            {
                "box": {
                    "id": "obj-299",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 593.2432036399841, 2906.7565627098083, 29.5, 22.0 ],
                    "text": "f"
                }
            },
            {
                "box": {
                    "id": "obj-293",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 487.8378052711487, 2906.7565627098083, 29.5, 22.0 ],
                    "text": "f"
                }
            },
            {
                "box": {
                    "id": "obj-296",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 379.7297043800354, 2912.161967754364, 29.5, 22.0 ],
                    "text": "f"
                }
            },
            {
                "box": {
                    "id": "obj-292",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 156.75674629211426, 2912.161967754364, 29.5, 22.0 ],
                    "text": "f"
                }
            },
            {
                "box": {
                    "id": "obj-291",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 266.21619844436646, 2912.161967754364, 29.5, 22.0 ],
                    "text": "f"
                }
            },
            {
                "box": {
                    "id": "obj-290",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 282.43241357803345, 2739.1890063285828, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-288",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 6,
                    "outlettype": [ "bang", "bang", "bang", "bang", "bang", "bang" ],
                    "patching_rect": [ 282.43241357803345, 2787.8376517295837, 72.0, 22.0 ],
                    "text": "t b b b b b b"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.17254901960784313, 0.17254901960784313, 0.17254901960784313, 1.0 ],
                    "border": 0,
                    "bordercolor": [ 0.17254901960784313, 0.17254901960784313, 0.17254901960784313, 1.0 ],
                    "cols": 2,
                    "colwidth": 72,
                    "fgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "gridlinecolor": [ 0.4823529411764706, 0.4823529411764706, 0.4823529411764706, 1.0 ],
                    "hcellcolor": [ 1.0, 0.4666666666666667, 0.16862745098039217, 1.0 ],
                    "headercolor": [ 0.25098039215686274, 0.24705882352941178, 0.24705882352941178, 1.0 ],
                    "hscroll": 0,
                    "id": "obj-268",
                    "just": 1,
                    "maxclass": "jit.cellblock",
                    "numinlets": 2,
                    "numoutlets": 4,
                    "outlettype": [ "list", "", "", "" ],
                    "outmode": 1,
                    "patching_rect": [ 977.0269618034363, 2836.4862971305847, 154.0, 128.0 ],
                    "precision": 0,
                    "presentation": 1,
                    "presentation_rect": [ 1531.25, 571.875, 143.18181681632996, 126.89462757110596 ],
                    "rowhead": 1,
                    "rowheight": 21,
                    "rows": 6,
                    "selmode": 0,
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "vscroll": 0
                }
            },
            {
                "box": {
                    "id": "obj-272",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 977.0269618034363, 2783.783597946167, 62.0, 22.0 ],
                    "text": "refer stats"
                }
            },
            {
                "box": {
                    "id": "obj-264",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 266.21619844436646, 2970.2700719833374, 103.0, 22.0 ],
                    "text": "prepend max(ms)"
                }
            },
            {
                "box": {
                    "id": "obj-266",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 156.75674629211426, 2970.2700719833374, 99.0, 22.0 ],
                    "text": "prepend min(ms)"
                }
            },
            {
                "box": {
                    "id": "obj-260",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 698.6486020088196, 2970.2700719833374, 101.0, 22.0 ],
                    "text": "prepend IQR(ms)"
                }
            },
            {
                "box": {
                    "id": "obj-263",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 593.2432036399841, 2970.2700719833374, 96.0, 22.0 ],
                    "text": "prepend Q3(ms)"
                }
            },
            {
                "box": {
                    "id": "obj-259",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 698.6486020088196, 3055.0, 83.0, 22.0 ],
                    "text": "prepend store"
                }
            },
            {
                "box": {
                    "id": "obj-257",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 698.6486020088196, 3143.0, 55.0, 22.0 ],
                    "saved_object_attributes": {
                        "embed": 0,
                        "precision": 6
                    },
                    "text": "coll stats"
                }
            },
            {
                "box": {
                    "id": "obj-255",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 487.8378052711487, 2970.2700719833374, 96.0, 22.0 ],
                    "text": "prepend Q2(ms)"
                }
            },
            {
                "box": {
                    "id": "obj-254",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 379.7297043800354, 2970.2700719833374, 96.0, 22.0 ],
                    "text": "prepend Q1(ms)"
                }
            },
            {
                "box": {
                    "id": "obj-251",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 533.7837481498718, 2787.8376517295837, 30.0, 20.0 ],
                    "text": "IQR"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-250",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 570.2702322006226, 2787.8376517295837, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-244",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 570.2702322006226, 2710.8106298446655, 54.0, 22.0 ],
                    "text": "!- 1."
                }
            },
            {
                "box": {
                    "id": "obj-231",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 462.1621313095093, 2762.1619777679443, 25.0, 20.0 ],
                    "text": "Q3"
                }
            },
            {
                "box": {
                    "id": "obj-228",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 356.7567329406738, 2689.189009666443, 25.0, 20.0 ],
                    "text": "Q1"
                }
            },
            {
                "box": {
                    "id": "obj-225",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 409.45943212509155, 2721.621439933777, 25.0, 20.0 ],
                    "text": "Q2"
                }
            },
            {
                "box": {
                    "id": "obj-220",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 824.3242692947388, 2745.9457626342773, 31.0, 20.0 ],
                    "text": "max"
                }
            },
            {
                "box": {
                    "id": "obj-219",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 779.7296776771545, 2710.8106298446655, 28.0, 20.0 ],
                    "text": "min"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-203",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 864.8648071289062, 2743.2430601119995, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-206",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 814.8648104667664, 2708.1079273223877, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-212",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 814.8648104667664, 2643.2430667877197, 119.0, 22.0 ],
                    "text": "unjoin 2"
                }
            },
            {
                "box": {
                    "id": "obj-213",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 814.8648104667664, 2548.6484785079956, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-214",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "list" ],
                    "patching_rect": [ 814.8648104667664, 2597.2971239089966, 176.0, 22.0 ],
                    "text": "fluid.buf2list @source stat_res2"
                }
            },
            {
                "box": {
                    "id": "obj-193",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "bang" ],
                    "patching_rect": [ 1097.2972240447998, 2520.2701020240784, 99.0, 22.0 ],
                    "text": "buffer~ stat_res2"
                }
            },
            {
                "box": {
                    "id": "obj-194",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 814.8648104667664, 2474.324159145355, 382.0, 35.0 ],
                    "text": "fluid.bufstats~ @source temp_dataset_image @numchans 1 @startchan 0 @stats stat_res2 @select low high @low 0. @high 100."
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-192",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 489.1891565322876, 2760.8106265068054, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-188",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 439.1891598701477, 2721.621439933777, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-186",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 389.1891632080078, 2687.837658405304, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-184",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 389.1891632080078, 2621.621446609497, 169.36349433660507, 22.0 ],
                    "text": "unjoin 3"
                }
            },
            {
                "box": {
                    "id": "obj-178",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 336.4864640235901, 2241.8917422294617, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1598.4375, 522.65625, 83.0, 20.0 ],
                    "text": "stats analysis"
                }
            },
            {
                "box": {
                    "id": "obj-179",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 282.43241357803345, 2229.7295808792114, 44.11764621734619, 44.11764621734619 ],
                    "presentation": 1,
                    "presentation_rect": [ 1531.25, 507.03125, 51.06382942199707, 51.06382942199707 ]
                }
            },
            {
                "box": {
                    "id": "obj-72",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 995.6204326152802, 267.703125, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-163",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 389.1891632080078, 2525.675507068634, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-160",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "list" ],
                    "patching_rect": [ 389.1891632080078, 2574.324152469635, 169.0, 22.0 ],
                    "text": "fluid.buf2list @source stat_res"
                }
            },
            {
                "box": {
                    "id": "obj-159",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 391.89186573028564, 2412.162001132965, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-152",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "bang" ],
                    "patching_rect": [ 701.3513045310974, 2520.2701020240784, 92.0, 22.0 ],
                    "text": "buffer~ stat_res"
                }
            },
            {
                "box": {
                    "id": "obj-148",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 391.89186573028564, 2318.91876411438, 164.0, 22.0 ],
                    "text": "tobuffer temp_dataset_image"
                }
            },
            {
                "box": {
                    "id": "obj-143",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "bang" ],
                    "patching_rect": [ 574.3959819674492, 2355.4052481651306, 161.0, 22.0 ],
                    "text": "buffer~ temp_dataset_image"
                }
            },
            {
                "box": {
                    "id": "obj-122",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 391.89186573028564, 2355.4052481651306, 156.0, 22.0 ],
                    "text": "fluid.dataset~ temp_dataset"
                }
            },
            {
                "box": {
                    "id": "obj-121",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 391.89186573028564, 2474.324159145355, 401.0, 35.0 ],
                    "text": "fluid.bufstats~ @source temp_dataset_image @numchans 1 @startchan 0 @stats stat_res @select low mid high @low 25. @high 75."
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.17254901960784313, 0.17254901960784313, 0.17254901960784313, 1.0 ],
                    "border": 1,
                    "bordercolor": [ 1.0, 0.4666666666666667, 0.16862745098039217, 1.0 ],
                    "id": "obj-114",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 225.11037170886993, 3613.7932929992676, 128.0, 128.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1238.28125, 146.09375, 226.73307763040066, 44.247791171073914 ],
                    "proportion": 0.5,
                    "shape": 3
                }
            },
            {
                "box": {
                    "id": "obj-78",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2180.291959106922, 822.6277328133583, 50.0, 22.0 ],
                    "text": "pack i 0"
                }
            },
            {
                "box": {
                    "id": "obj-82",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2180.291959106922, 864.9634990096092, 87.0, 22.0 ],
                    "text": "prepend select"
                }
            },
            {
                "box": {
                    "id": "obj-102",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 2053.2846605181694, 869.343061029911, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-103",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2053.2846605181694, 903.649630188942, 107.0, 22.0 ],
                    "text": "refer table_header"
                }
            },
            {
                "box": {
                    "id": "obj-74",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 4030.666786789894, 806.6038110852242, 77.0, 22.0 ],
                    "text": "route symbol"
                }
            },
            {
                "box": {
                    "id": "obj-68",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3948.47012090683, 1555.3804042339325, 57.0, 22.0 ],
                    "text": "tosymbol"
                }
            },
            {
                "box": {
                    "id": "obj-69",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 4073.595455288887, 1397.752920627594, 120.68964689970016, 35.0 ],
                    "saved_object_attributes": {
                        "legacyoutputorder": 0
                    },
                    "text": "regexp ^(.*/)([^/]+)$ %1selected/%2"
                }
            },
            {
                "box": {
                    "id": "obj-211",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 3925.3931970596313, 1292.8803954720497, 108.0, 22.0 ],
                    "text": "ears.read~ @iter 1"
                }
            },
            {
                "box": {
                    "id": "obj-205",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 3925.3931970596313, 1627.4957912564278, 108.0, 22.0 ],
                    "text": "ears.write~"
                }
            },
            {
                "box": {
                    "coll_data": {
                        "count": 5,
                        "data": [
                            {
                                "key": 1,
                                "value": [ "/Users/matteolorito2/Desktop/audio/knock/sliced/slice_1.wav" ]
                            },
                            {
                                "key": 2,
                                "value": [ "/Users/matteolorito2/Desktop/audio/knock/sliced/slice_2.wav" ]
                            },
                            {
                                "key": 3,
                                "value": [ "/Users/matteolorito2/Desktop/audio/knock/sliced/slice_3.wav" ]
                            },
                            {
                                "key": 4,
                                "value": [ "/Users/matteolorito2/Desktop/audio/knock/sliced/slice_4.wav" ]
                            },
                            {
                                "key": 5,
                                "value": [ "/Users/matteolorito2/Desktop/audio/knock/sliced/slice_5.wav" ]
                            }
                        ]
                    },
                    "id": "obj-195",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 4030.666786789894, 760.000022649765, 100.0, 22.0 ],
                    "saved_object_attributes": {
                        "embed": 1,
                        "precision": 6
                    },
                    "text": "coll samples"
                }
            },
            {
                "box": {
                    "id": "obj-196",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4030.666786789894, 721.3333548307419, 71.0, 22.0 ],
                    "text": "fromsymbol"
                }
            },
            {
                "box": {
                    "id": "obj-197",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4030.666786789894, 682.6666870117188, 63.0, 22.0 ],
                    "text": "array.tolist"
                }
            },
            {
                "box": {
                    "id": "obj-199",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 3940.00011742115, 644.0000191926956, 200.0, 22.0 ],
                    "text": "string.regexp \\\\d{2\\,6}"
                }
            },
            {
                "box": {
                    "id": "obj-189",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 3940.00011742115, 604.0000180006027, 77.0, 22.0 ],
                    "text": "route symbol"
                }
            },
            {
                "box": {
                    "id": "obj-177",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4200.000195264816, 975.7686184644699, 39.0, 22.0 ],
                    "text": "dump"
                }
            },
            {
                "box": {
                    "id": "obj-167",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 3362.6667668819427, 675.0, 59.0, 22.0 ],
                    "text": "route text"
                }
            },
            {
                "box": {
                    "id": "obj-164",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 3362.6667668819427, 525.0, 80.0, 22.0 ],
                    "text": "t b l"
                }
            },
            {
                "box": {
                    "id": "obj-155",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3905.00011742115, 518.6666821241379, 35.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "id": "obj-154",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 3362.6667668819427, 1009.3333634138107, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-150",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3638.6667751073837, 846.6666918992996, 79.0, 22.0 ],
                    "text": "addrange 0 3"
                }
            },
            {
                "box": {
                    "id": "obj-145",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 4865.168927907944, 359.5505905151367, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-146",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4865.168927907944, 398.8764363527298, 131.0, 22.0 ],
                    "text": "refer transformed_data"
                }
            },
            {
                "box": {
                    "id": "obj-144",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 3905.00011742115, 563.2075733542442, 124.0, 22.0 ],
                    "saved_object_attributes": {
                        "embed": 0,
                        "precision": 6
                    },
                    "text": "coll transformed_data"
                }
            },
            {
                "box": {
                    "id": "obj-133",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 3362.6667668819427, 969.3333622217178, 90.0, 22.0 ],
                    "text": "route transform"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.17254901960784313, 0.17254901960784313, 0.17254901960784313, 1.0 ],
                    "border": 0,
                    "bordercolor": [ 0.17254901960784313, 0.17254901960784313, 0.17254901960784313, 1.0 ],
                    "cols": 4,
                    "colwidth": 72,
                    "fgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 10.0,
                    "gridlinecolor": [ 0.4823529411764706, 0.4823529411764706, 0.4823529411764706, 1.0 ],
                    "hcellcolor": [ 1.0, 0.4666666666666667, 0.16862745098039217, 1.0 ],
                    "headercolor": [ 0.25098039215686274, 0.24705882352941178, 0.24705882352941178, 1.0 ],
                    "hscroll": 0,
                    "id": "obj-131",
                    "just": 1,
                    "maxclass": "jit.cellblock",
                    "numinlets": 2,
                    "numoutlets": 4,
                    "outlettype": [ "list", "", "", "" ],
                    "outmode": 1,
                    "patching_rect": [ 4865.168927907944, 441.5730689764023, 309.0, 195.0 ],
                    "precision": 0,
                    "presentation": 1,
                    "presentation_rect": [ 1500.78125, 163.28125, 284.3478167653084, 157.39129918813705 ],
                    "rowhead": 1,
                    "rowheight": 15,
                    "rows": 4,
                    "sccolor": [ 0.25098039215686274, 0.24705882352941178, 0.24705882352941178, 1.0 ],
                    "selmode": 0,
                    "sgcolor": [ 1.0, 0.4666666666666667, 0.16862745098039217, 1.0 ],
                    "stcolor": [ 1.0, 0.4666666666666667, 0.16862745098039217, 1.0 ],
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-130",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 3552.000105857849, 1116.0000332593918, 69.0, 22.0 ],
                    "text": "route dump"
                }
            },
            {
                "box": {
                    "id": "obj-125",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3463.4616540670395, 1216.9487544298172, 35.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "id": "obj-126",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3463.4616540670395, 1157.3333678245544, 79.0, 22.0 ],
                    "text": "r reset_query"
                }
            },
            {
                "box": {
                    "id": "obj-127",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3706.6039459109306, 1217.3333696126938, 173.0, 22.0 ],
                    "text": "push_to_coll transformed_data"
                }
            },
            {
                "box": {
                    "id": "obj-128",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "dictionary", "", "", "", "" ],
                    "patching_rect": [ 3592.330356180668, 1271.6981723308563, 101.0, 22.0 ],
                    "saved_object_attributes": {
                        "legacy": 0,
                        "parameter_enable": 0,
                        "parameter_mappable": 0
                    },
                    "text": "dict data_dict_sel"
                }
            },
            {
                "box": {
                    "id": "obj-129",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 3593.3963934779167, 1220.754773736, 99.0, 22.0 ],
                    "saved_object_attributes": {
                        "legacy": 0
                    },
                    "text": "dict.unpack data:"
                }
            },
            {
                "box": {
                    "id": "obj-123",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3362.6667668819427, 1046.666697859764, 39.0, 22.0 ],
                    "text": "dump"
                }
            },
            {
                "box": {
                    "id": "obj-117",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3362.6667668819427, 846.6666918992996, 263.0, 22.0 ],
                    "text": "transform temp_dataset temp_dataset_selected"
                }
            },
            {
                "box": {
                    "id": "obj-111",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "", "clear" ],
                    "patching_rect": [ 3362.6667668819427, 790.6666902303696, 57.0, 22.0 ],
                    "text": "t b l clear"
                }
            },
            {
                "box": {
                    "id": "obj-110",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3422.6667668819427, 565.0, 72.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-107",
                    "lines": 1,
                    "maxclass": "textedit",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 3362.6667668819427, 615.0, 424.99999594688416, 38.63636326789856 ],
                    "presentation": 1,
                    "presentation_rect": [ 1241.40625, 317.1875, 216.3116030395031, 38.260868310928345 ],
                    "text": "0 < 200.",
                    "wordwrap": 0
                }
            },
            {
                "box": {
                    "id": "obj-100",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 3563.4946692585945, 349.6538447737694, 53.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1413.28125, 257.03125, 37.0, 20.0 ],
                    "text": "value"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-99",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 3564.456207752228, 391.0, 61.40350818634033, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1398.2456007003784, 286.71875, 59.64912223815918, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-81",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 3422.6667668819427, 392.0, 53.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1324.21875, 257.03125, 53.0, 20.0 ],
                    "text": "operator"
                }
            },
            {
                "box": {
                    "id": "obj-77",
                    "items": [ "==", ",", "!=", ",", "<", ",", "<=", ",", ">", ",", ">=" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 3422.6667668819427, 429.0, 100.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1324.21875, 286.71875, 60.43479931354523, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-75",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 3312.0, 430.0, 47.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1243.75, 257.03125, 47.0, 20.0 ],
                    "text": "column"
                }
            },
            {
                "box": {
                    "id": "obj-73",
                    "maxclass": "number",
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 3362.6667668819427, 429.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-71",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3362.6667668819427, 752.0000224113464, 79.0, 22.0 ],
                    "text": "prepend filter"
                }
            },
            {
                "box": {
                    "id": "obj-70",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3362.6667668819427, 481.0, 220.78944087028503, 22.0 ],
                    "text": "join 3 @triggers 2"
                }
            },
            {
                "box": {
                    "id": "obj-67",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 3362.6667668819427, 925.3333609104156, 110.0, 22.0 ],
                    "text": "fluid.datasetquery~"
                }
            },
            {
                "box": {
                    "id": "obj-62",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 3362.6667668819427, 1077.3333654403687, 208.0, 22.0 ],
                    "text": "fluid.dataset~ temp_dataset_selected"
                }
            },
            {
                "box": {
                    "fontsize": 36.0,
                    "id": "obj-36",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 78.49269926548004, 115.0, 423.0, 47.0 ],
                    "text": "Analysis"
                }
            },
            {
                "box": {
                    "fontsize": 36.0,
                    "id": "obj-35",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 803.9598497152328, 552.5, 44.0, 47.0 ],
                    "text": "UI"
                }
            },
            {
                "box": {
                    "fontsize": 36.0,
                    "id": "obj-32",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2513.1386726498604, 342.3357645869255, 423.0, 47.0 ],
                    "text": "List"
                }
            },
            {
                "box": {
                    "fontsize": 36.0,
                    "id": "obj-29",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 3364.0, 269.0, 107.0, 47.0 ],
                    "text": "Query"
                }
            },
            {
                "box": {
                    "fontsize": 36.0,
                    "id": "obj-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 59.124087274074554, 1588.321159362793, 423.0, 47.0 ],
                    "text": "Stats"
                }
            },
            {
                "box": {
                    "id": "obj-335",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2240.983542442322, 1422.131106853485, 70.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "obj-334",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2140.145973920822, 1817.5182384252548, 71.0, 22.0 ],
                    "text": "fromsymbol"
                }
            },
            {
                "box": {
                    "id": "obj-326",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2614.285482108593, 1966.917118549347, 57.0, 22.0 ],
                    "text": "tosymbol"
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 2737.9452412724495, 1007.0577108860016, 100.0, 22.0 ],
                    "text": "route symbol"
                }
            },
            {
                "box": {
                    "id": "obj-323",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2737.9452412724495, 1045.9066331386566, 80.0, 22.0 ],
                    "text": "prepend read"
                }
            },
            {
                "box": {
                    "id": "obj-322",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "bang" ],
                    "patching_rect": [ 2737.9452412724495, 1086.1944043636322, 120.0, 22.0 ],
                    "text": "buffer~ playback_buf"
                }
            },
            {
                "box": {
                    "coll_data": {
                        "count": 5,
                        "data": [
                            {
                                "key": 1,
                                "value": [ "/Users/matteolorito2/Desktop/audio/knock/sliced/slice_1.wav" ]
                            },
                            {
                                "key": 2,
                                "value": [ "/Users/matteolorito2/Desktop/audio/knock/sliced/slice_2.wav" ]
                            },
                            {
                                "key": 3,
                                "value": [ "/Users/matteolorito2/Desktop/audio/knock/sliced/slice_3.wav" ]
                            },
                            {
                                "key": 4,
                                "value": [ "/Users/matteolorito2/Desktop/audio/knock/sliced/slice_4.wav" ]
                            },
                            {
                                "key": 5,
                                "value": [ "/Users/matteolorito2/Desktop/audio/knock/sliced/slice_5.wav" ]
                            }
                        ]
                    },
                    "id": "obj-320",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 2737.9452412724495, 964.6116662025452, 100.0, 22.0 ],
                    "saved_object_attributes": {
                        "embed": 1,
                        "precision": 6
                    },
                    "text": "coll samples"
                }
            },
            {
                "box": {
                    "id": "obj-318",
                    "maxclass": "textbutton",
                    "mode": 1,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 2099.21875, 1579.0145896673203, 78.26086699962616, 15.652173399925232 ],
                    "presentation": 1,
                    "presentation_rect": [ 1143.3024836182594, 682.5242624878883, 57.600000858306885, 20.000000298023224 ],
                    "text": "96000",
                    "textcolor": [ 0.6196078431372549, 0.7450980392156863, 0.9529411764705882, 1.0 ],
                    "texton": "96000",
                    "textoncolor": [ 1.0, 0.4666666666666667, 0.16862745098039217, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-317",
                    "maxclass": "textbutton",
                    "mode": 1,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 2010.9375, 1579.0145896673203, 78.26086699962616, 15.652173399925232 ],
                    "presentation": 1,
                    "presentation_rect": [ 1069.516076862812, 682.5242624878883, 57.600000858306885, 20.000000298023224 ],
                    "text": "88200",
                    "textcolor": [ 0.6196078431372549, 0.7450980392156863, 0.9529411764705882, 1.0 ],
                    "texton": "88200",
                    "textoncolor": [ 1.0, 0.4666666666666667, 0.16862745098039217, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-316",
                    "maxclass": "textbutton",
                    "mode": 1,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1925.0, 1579.0145896673203, 78.26086699962616, 15.652173399925232 ],
                    "presentation": 1,
                    "presentation_rect": [ 1003.4966602921486, 682.5242624878883, 57.600000858306885, 20.000000298023224 ],
                    "text": "48000",
                    "textcolor": [ 0.6196078431372549, 0.7450980392156863, 0.9529411764705882, 1.0 ],
                    "texton": "48000",
                    "textoncolor": [ 1.0, 0.4666666666666667, 0.16862745098039217, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-311",
                    "maxclass": "textbutton",
                    "mode": 1,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1844.53125, 1579.0145896673203, 78.26086699962616, 15.652173399925232 ],
                    "presentation": 1,
                    "presentation_rect": [ 937.4772437214851, 682.5242624878883, 57.600000858306885, 20.000000298023224 ],
                    "text": "44100",
                    "textcolor": [ 0.6196078431372549, 0.7450980392156863, 0.9529411764705882, 1.0 ],
                    "texton": "44100",
                    "textoncolor": [ 1.0, 0.4666666666666667, 0.16862745098039217, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-310",
                    "maxclass": "textbutton",
                    "mode": 1,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1750.78125, 1579.0145896673203, 78.26086699962616, 15.652173399925232 ],
                    "presentation": 1,
                    "presentation_rect": [ 868.5452058315277, 682.5242624878883, 57.600000858306885, 20.000000298023224 ],
                    "text": "Original",
                    "textcolor": [ 0.6196078431372549, 0.7450980392156863, 0.9529411764705882, 1.0 ],
                    "texton": "Original",
                    "textoncolor": [ 1.0, 0.4666666666666667, 0.16862745098039217, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-306",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 169.93795502185822, 3606.896740913391, 150.0, 47.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 1598.4375, 436.20412242412567, 199.0, 33.0 ],
                    "text": "define classes boundaries. Enter to confirm"
                }
            },
            {
                "box": {
                    "fontsize": 18.0,
                    "id": "obj-304",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 176.83450710773468, 3586.2070846557617, 218.0, 27.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1257.8125, 392.96875, 148.0, 27.0 ],
                    "text": "Duration Analysis"
                }
            },
            {
                "box": {
                    "id": "obj-303",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 204.42071545124054, 3579.3105325698853, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 833.59375, 682.5242624878883, 25.0, 20.0 ],
                    "text": "SR"
                }
            },
            {
                "box": {
                    "id": "obj-301",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 194.07588732242584, 3631.0346732139587, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 833.59375, 656.3106706142426, 59.0, 20.0 ],
                    "text": "Channels"
                }
            },
            {
                "box": {
                    "fontsize": 18.0,
                    "id": "obj-297",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 187.17933523654938, 3613.7932929992676, 218.0, 27.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 833.59375, 618.0, 218.0, 27.0 ],
                    "text": "Conversions"
                }
            },
            {
                "box": {
                    "id": "obj-295",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "int" ],
                    "patching_rect": [ 2140.145973920822, 1854.0145885944366, 29.5, 22.0 ],
                    "text": "t i 1"
                }
            },
            {
                "box": {
                    "id": "obj-286",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "int" ],
                    "patching_rect": [ 2074.452543616295, 1854.0145885944366, 36.0, 22.0 ],
                    "text": "t -1 0"
                }
            },
            {
                "box": {
                    "id": "obj-278",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2241.6058273911476, 1711.6788229346275, 127.0, 22.0 ],
                    "text": "prepend numchannels"
                }
            },
            {
                "box": {
                    "fontlink": 1,
                    "id": "obj-270",
                    "maxclass": "textbutton",
                    "mode": 1,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 2240.983542442322, 1527.0491366386414, 57.349609375, 21.40625 ],
                    "presentation": 1,
                    "presentation_rect": [ 895.8083720207214, 655.6075456142426, 57.349609375, 21.40625 ],
                    "text": "Original",
                    "textcolor": [ 0.6196078431372549, 0.7450980392156863, 0.9529411764705882, 1.0 ],
                    "texton": "Original",
                    "textoncolor": [ 1.0, 0.4666666666666667, 0.16862745098039217, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-262",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 2891.803195953369, 1397.540943622589, 77.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 830.681128680706, 712.6213494539261, 73.4375, 20.3125 ],
                    "text": "Convert All",
                    "texton": "Convert All"
                }
            },
            {
                "box": {
                    "id": "obj-261",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2140.145973920822, 1932.8467049598694, 66.0, 22.0 ],
                    "text": "prepend sr"
                }
            },
            {
                "box": {
                    "id": "obj-258",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1945.9853910207748, 1899.9999898076057, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-256",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1945.9853910207748, 1932.8467049598694, 75.0, 22.0 ],
                    "text": "resample $1"
                }
            },
            {
                "box": {
                    "id": "obj-249",
                    "linecount": 6,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2399.173420727253, 1817.5182384252548, 135.0, 89.0 ],
                    "text": "ears.format~ @resample 1 @duration -1 @numchannels -1 @sr -1 @channelmodeup 2 @channelmodedown 1"
                }
            },
            {
                "box": {
                    "fontsize": 36.0,
                    "id": "obj-248",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1658.1966738700867, 1312.4999499320984, 301.02207612991333, 127.0 ],
                    "text": "Processing: \nConvert To Mono\nResample"
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 2399.2479072213173, 2045.864479959011, 108.0, 22.0 ],
                    "text": "ears.write~"
                }
            },
            {
                "box": {
                    "id": "obj-236",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 2784.962158679962, 1883.4584793448448, 147.33227586746216, 35.0 ],
                    "saved_object_attributes": {
                        "legacyoutputorder": 0
                    },
                    "text": "regexp ^(.*)/[^/]+/([^/]+)$ %1/processed/%2"
                }
            },
            {
                "box": {
                    "id": "obj-237",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 2891.803195953369, 1557.377004623413, 77.0, 22.0 ],
                    "text": "route symbol"
                }
            },
            {
                "box": {
                    "id": "obj-238",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2865.57368850708, 1654.9179854393005, 72.0, 22.0 ],
                    "saved_object_attributes": {
                        "versionnumber": 80300
                    },
                    "text": "bach.collect"
                }
            },
            {
                "box": {
                    "id": "obj-240",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2891.803195953369, 1485.2458591461182, 39.0, 22.0 ],
                    "text": "dump"
                }
            },
            {
                "box": {
                    "coll_data": {
                        "count": 5,
                        "data": [
                            {
                                "key": 1,
                                "value": [ "/Users/matteolorito2/Desktop/audio/knock/sliced/slice_1.wav" ]
                            },
                            {
                                "key": 2,
                                "value": [ "/Users/matteolorito2/Desktop/audio/knock/sliced/slice_2.wav" ]
                            },
                            {
                                "key": 3,
                                "value": [ "/Users/matteolorito2/Desktop/audio/knock/sliced/slice_3.wav" ]
                            },
                            {
                                "key": 4,
                                "value": [ "/Users/matteolorito2/Desktop/audio/knock/sliced/slice_4.wav" ]
                            },
                            {
                                "key": 5,
                                "value": [ "/Users/matteolorito2/Desktop/audio/knock/sliced/slice_5.wav" ]
                            }
                        ]
                    },
                    "id": "obj-241",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 2891.803195953369, 1516.3933992385864, 137.0, 22.0 ],
                    "saved_object_attributes": {
                        "embed": 1,
                        "precision": 6
                    },
                    "text": "coll samples"
                }
            },
            {
                "box": {
                    "id": "obj-243",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 2399.270060122013, 1711.6788229346275, 108.0, 22.0 ],
                    "text": "ears.read~ @iter 1"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                    "activebgoncolor": [ 0.0, 0.854901960784314, 0.282352941176471, 1.0 ],
                    "id": "obj-232",
                    "maxclass": "live.toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 273.99269926548004, 486.0, 34.0, 32.5 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": "themecolor.live_control_selection"
                        },
                        "activebgoncolor": {
                            "expression": "themecolor.live_macro_assignment"
                        },
                        "valueof": {
                            "parameter_enum": [ "off", "on" ],
                            "parameter_longname": "live.toggle[2]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.toggle",
                            "parameter_type": 2
                        }
                    },
                    "varname": "live.toggle[2]"
                }
            },
            {
                "box": {
                    "id": "obj-247",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 614.0, 1521.0, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-246",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 641.3461752533913, 1600.0000534057617, 129.0, 22.0 ],
                    "text": "0 500 1000 1500 2000"
                }
            },
            {
                "box": {
                    "id": "obj-239",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 459.12408512830734, 1703.6496258974075, 169.0, 22.0 ],
                    "text": "prepend setClassBounbdaries"
                }
            },
            {
                "box": {
                    "id": "obj-229",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 895.620433151722, 1659.8540056943893, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-222",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 852.63157081604, 1813.138676404953, 105.26315689086914, 22.0 ],
                    "text": "t l l"
                }
            },
            {
                "box": {
                    "id": "obj-221",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 853.284666955471, 1776.6423262357712, 59.0, 22.0 ],
                    "text": "route text"
                }
            },
            {
                "box": {
                    "autoscroll": 0,
                    "id": "obj-216",
                    "keymode": 1,
                    "lines": 1,
                    "maxclass": "textedit",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 853.284666955471, 1717.5182389616966, 338.0, 41.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1257.8125, 436.20412242412567, 332.9787210226059, 23.404255151748657 ],
                    "text": "0 100 200 300"
                }
            },
            {
                "box": {
                    "id": "obj-172",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1177.6204326152802, 405.0, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1103.125, 489.84375, 82.0, 20.0 ],
                    "text": "Total samples"
                }
            },
            {
                "box": {
                    "fontsize": 24.0,
                    "id": "obj-170",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1090.6204326152802, 397.0, 70.0, 35.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 995.3125, 482.03125, 102.0, 35.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-169",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1090.6204326152802, 349.0, 116.0, 22.0 ],
                    "text": "r --samples_number"
                }
            },
            {
                "box": {
                    "id": "obj-168",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 420.4379539489746, 1943.795610010624, 105.0, 22.0 ],
                    "text": "0 0 0 0 0 0 0 0 0 0"
                }
            },
            {
                "box": {
                    "id": "obj-166",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 420.4379539489746, 1907.299259841442, 49.0, 22.0 ],
                    "text": "r reset_"
                }
            },
            {
                "box": {
                    "id": "obj-120",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 295.6204363703728, 1705.8394069075584, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1319.53125, 522.5631647109985, 83.0, 20.0 ],
                    "text": "class analysis"
                }
            },
            {
                "box": {
                    "id": "obj-116",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 222.62773603200912, 1907.299259841442, 121.36345237493515, 22.0 ],
                    "text": "join 2 @triggers -1"
                }
            },
            {
                "box": {
                    "attr": "setminmax",
                    "id": "obj-115",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 222.62773603200912, 1943.795610010624, 188.49559038877487, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-113",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 324.81751650571823, 1843.7956105470657, 141.0, 22.0 ],
                    "text": "zl.len @zlmaxsize 32767"
                }
            },
            {
                "box": {
                    "candycane": 3,
                    "id": "obj-112",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 195.62043690681458, 1990.5109382271767, 255.0, 100.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1255.46875, 592.96875, 256.0, 105.0 ],
                    "setminmax": [ 0.0, 5.0 ],
                    "setstyle": 1,
                    "size": 3
                }
            },
            {
                "box": {
                    "id": "obj-92",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 243.79561913013458, 1691.9707938432693, 44.11764621734619, 44.11764621734619 ],
                    "presentation": 1,
                    "presentation_rect": [ 1257.03125, 507.03125, 51.06382942199707, 51.06382942199707 ]
                }
            },
            {
                "box": {
                    "filename": "none",
                    "id": "obj-61",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 243.79561913013458, 1769.3430562019348, 100.0, 22.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0
                    },
                    "text": "v8 @embed 1",
                    "textfile": {
                        "text": "outlets = 2;\r\n\r\nlet myDict = new Dict(\"data_dict\");\r\nlet classBoundaries = [0, 500, 1000, 1500, 2000, 3000, 4000, 5000, 10000, 20000, 30000];\r\n\r\n\t\r\nfunction bang() {\r\n    let keys = myDict.getkeys();\r\n    let durations = [];\r\n    let classCounter = Array(classBoundaries.length - 1).fill(0);\r\n    \r\n    \r\n    for (let i = 0; i < keys.length; i++) {\r\n       let tempKey = keys[i]\r\n       let tempDur = Math.round(myDict.get(tempKey)[0]);   \r\n       durations.push(tempDur);  \r\n         \r\n       for (let j = 0; j < classBoundaries.length - 1; j++) {\r\n           if ((tempDur > classBoundaries[j]) && (tempDur <= classBoundaries[j + 1])) {\r\n                classCounter[j]++;\r\n           }\r\n       }\r\n    }\r\n\toutlet(1, durations);\r\n    outlet(0, classCounter);\r\n\r\n}\r\n\r\nfunction setClassBounbdaries(...n) {\r\n    classBoundaries = n;\r\n    post('New class boundaries values are: ', classBoundaries, '\\n');\r\n}",
                        "filename": "none",
                        "flags": 0,
                        "embed": 1,
                        "autowatch": 1
                    },
                    "varname": "v8_AA"
                }
            },
            {
                "box": {
                    "id": "obj-57",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1847.445245563984, 822.6277328133583, 50.0, 22.0 ],
                    "text": "pack i 0"
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "int" ],
                    "patching_rect": [ 1434.3065616488457, 918.9780972599983, 31.0, 22.0 ],
                    "text": "t s 1"
                }
            },
            {
                "box": {
                    "id": "obj-47",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "int" ],
                    "patching_rect": [ 1503.6496269702911, 918.9780972599983, 31.0, 22.0 ],
                    "text": "t s 2"
                }
            },
            {
                "box": {
                    "id": "obj-44",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "int" ],
                    "patching_rect": [ 1580.291962325573, 918.9780972599983, 31.0, 22.0 ],
                    "text": "t s 3"
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "int" ],
                    "patching_rect": [ 1359.1240803003311, 918.9780972599983, 31.0, 22.0 ],
                    "text": "t s 0"
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1847.445245563984, 864.9634990096092, 87.0, 22.0 ],
                    "text": "prepend select"
                }
            },
            {
                "box": {
                    "id": "obj-90",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 472.99269819259644, 997.8102136254311, 88.0, 22.0 ],
                    "text": "s end_analysis"
                }
            },
            {
                "box": {
                    "id": "obj-88",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 1722.627727985382, 1017.5182427167892, 29.5, 22.0 ],
                    "text": "- 1"
                }
            },
            {
                "box": {
                    "id": "obj-79",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1722.627727985382, 972.9926955103874, 55.0, 22.0 ],
                    "text": "zl.slice 1"
                }
            },
            {
                "box": {
                    "id": "obj-58",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1418.9780945777893, 1070.8029139637947, 29.5, 22.0 ],
                    "text": "-1"
                }
            },
            {
                "box": {
                    "id": "obj-56",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1359.1240803003311, 1070.8029139637947, 29.5, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "obj-54",
                    "linecount": 6,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1199.2700665593147, 572.9926976561546, 83.0, 87.0 ],
                    "text": "-1 index\n0 first item\n1 second item\n.\n.\n."
                }
            },
            {
                "box": {
                    "id": "obj-52",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1094.160578072071, 618.9780988693237, 80.0, 33.0 ],
                    "text": "-1 ascending\n1 descending"
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1418.9780945777893, 1027.0072937607765, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1359.1240803003311, 1027.0072937607765, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "" ],
                    "patching_rect": [ 1359.1240803003311, 990.5109435915947, 138.74521350860596, 22.0 ],
                    "text": "sel down up"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 1347.445248246193, 724.817514359951, 32.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "arrowcolor": [ 0.4823529411764706, 0.4823529411764706, 0.4823529411764706, 1.0 ],
                    "blinkcolor": [ 1.0, 0.6941176470588235, 0.38823529411764707, 1.0 ],
                    "bordercolor": [ 0.8509803921568627, 0.8509803921568627, 0.8509803921568627, 0.0 ],
                    "downarrow": 0,
                    "id": "obj-8",
                    "leftarrow": 0,
                    "maxclass": "live.arrows",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1580.291962325573, 886.1313821077347, 17.5, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1185.15625, 145.3125, 17.5, 15.0 ],
                    "rightarrow": 0,
                    "saved_attribute_attributes": {
                        "arrowcolor": {
                            "expression": ""
                        },
                        "blinkcolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "arrowcolor": [ 0.4823529411764706, 0.4823529411764706, 0.4823529411764706, 1.0 ],
                    "blinkcolor": [ 1.0, 0.6941176470588235, 0.38823529411764707, 1.0 ],
                    "bordercolor": [ 0.8509803921568627, 0.8509803921568627, 0.8509803921568627, 0.0 ],
                    "downarrow": 0,
                    "id": "obj-4",
                    "leftarrow": 0,
                    "maxclass": "live.arrows",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1503.6496269702911, 886.1313821077347, 17.5, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1103.125, 145.3125, 17.5, 15.0 ],
                    "rightarrow": 0,
                    "saved_attribute_attributes": {
                        "arrowcolor": {
                            "expression": ""
                        },
                        "blinkcolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "arrowcolor": [ 0.4823529411764706, 0.4823529411764706, 0.4823529411764706, 1.0 ],
                    "blinkcolor": [ 1.0, 0.6941176470588235, 0.38823529411764707, 1.0 ],
                    "bordercolor": [ 0.8509803921568627, 0.8509803921568627, 0.8509803921568627, 0.0 ],
                    "downarrow": 0,
                    "id": "obj-1",
                    "leftarrow": 0,
                    "maxclass": "live.arrows",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1434.3065616488457, 886.1313821077347, 17.5, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1040.625, 145.3125, 17.5, 15.0 ],
                    "rightarrow": 0,
                    "saved_attribute_attributes": {
                        "arrowcolor": {
                            "expression": ""
                        },
                        "blinkcolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "id": "obj-98",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1561.3138602375984, 775.1824775934219, 29.5, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "obj-97",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1405.1094815135002, 775.1824775934219, 29.5, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-96",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1405.1094815135002, 690.5109452009201, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-95",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1526.2773640751839, 775.1824775934219, 29.5, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-93",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1361.313861310482, 775.1824775934219, 29.5, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "obj-91",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1347.445248246193, 690.5109452009201, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-89",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1197.8102125525475, 664.9635000824928, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-87",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1109.4890451431274, 721.1678793430328, 107.0, 22.0 ],
                    "text": "join 2 @triggers -1"
                }
            },
            {
                "box": {
                    "attr": "downarrow",
                    "id": "obj-85",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1361.313861310482, 817.5182437896729, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "uparrow",
                    "id": "obj-84",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1526.2773640751839, 817.5182437896729, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "arrowcolor": [ 0.4823529411764706, 0.4823529411764706, 0.4823529411764706, 1.0 ],
                    "bordercolor": [ 0.8509803921568627, 0.8509803921568627, 0.8509803921568627, 0.0 ],
                    "downarrow": 0,
                    "id": "obj-80",
                    "leftarrow": 0,
                    "maxclass": "live.arrows",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1359.1240803003311, 886.1313821077347, 17.5, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 965.625, 144.53125, 17.5, 15.0 ],
                    "rightarrow": 0,
                    "saved_attribute_attributes": {
                        "arrowcolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "id": "obj-76",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1109.4890451431274, 664.9635000824928, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-60",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1109.4890451431274, 770.8029155731201, 76.0, 22.0 ],
                    "text": "prepend sort"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.17254901960784313, 0.17254901960784313, 0.17254901960784313, 1.0 ],
                    "border": 0,
                    "bordercolor": [ 0.17254901960784313, 0.17254901960784313, 0.17254901960784313, 1.0 ],
                    "cols": 4,
                    "colwidth": 72,
                    "fgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 10.0,
                    "gridlinecolor": [ 0.4823529411764706, 0.4823529411764706, 0.4823529411764706, 1.0 ],
                    "hcellcolor": [ 1.0, 0.4666666666666667, 0.16862745098039217, 1.0 ],
                    "headercolor": [ 0.25098039215686274, 0.24705882352941178, 0.24705882352941178, 1.0 ],
                    "hscroll": 0,
                    "id": "obj-26",
                    "just": 1,
                    "maxclass": "jit.cellblock",
                    "numinlets": 2,
                    "numoutlets": 4,
                    "outlettype": [ "list", "", "", "" ],
                    "outmode": 1,
                    "patching_rect": [ 2520.4379426836967, 513.1386833786964, 309.0, 195.0 ],
                    "precision": 0,
                    "presentation": 1,
                    "presentation_rect": [ 916.40625, 160.15625, 300.75362318754196, 195.0 ],
                    "rowhead": 1,
                    "rowheight": 15,
                    "rows": 5,
                    "sccolor": [ 0.25098039215686274, 0.24705882352941178, 0.24705882352941178, 1.0 ],
                    "selmode": 3,
                    "sgcolor": [ 1.0, 0.4666666666666667, 0.16862745098039217, 1.0 ],
                    "stcolor": [ 1.0, 0.4666666666666667, 0.16862745098039217, 1.0 ],
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-50",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1722.627727985382, 869.343061029911, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1722.627727985382, 902.1897761821747, 107.0, 22.0 ],
                    "text": "refer table_header"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.25882352941176473, 0.2235294117647059, 0.2235294117647059, 1.0 ],
                    "border": 0,
                    "bordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "colhead": 1,
                    "cols": 4,
                    "colwidth": 72,
                    "fgcolor": [ 0.8007417929292929, 0.8007417929292929, 0.8007417929292929, 1.0 ],
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 10.0,
                    "gridlinecolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "hcellcolor": [ 1.0, 0.4666666666666667, 0.16862745098039217, 1.0 ],
                    "headercolor": [ 0.25098039215686274, 0.24705882352941178, 0.24705882352941178, 1.0 ],
                    "hscroll": 0,
                    "id": "obj-48",
                    "just": 1,
                    "maxclass": "jit.cellblock",
                    "numinlets": 2,
                    "numoutlets": 4,
                    "outlettype": [ "list", "", "", "" ],
                    "outmode": 1,
                    "patching_rect": [ 1722.627727985382, 936.4963453412056, 309.3458020687103, 20.560747504234314 ],
                    "precision": 0,
                    "presentation": 1,
                    "presentation_rect": [ 916.40625, 145.3125, 284.7479009628296, 20.168066024780273 ],
                    "rowhead": 1,
                    "rowheight": 15,
                    "rows": 1,
                    "textcolor": [ 0.9647058823529412, 0.9647058823529412, 0.9647058823529412, 1.0 ],
                    "vscroll": 0
                }
            },
            {
                "box": {
                    "id": "obj-45",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2520.4379426836967, 770.8029155731201, 29.5, 22.0 ],
                    "text": "$2"
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 2520.4379426836967, 803.6496307253838, 33.0, 22.0 ],
                    "text": ">= 0"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 280.2919692993164, 1147.0, 29.5, 22.0 ],
                    "text": "t b l"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 409.48904889822006, 982.4817465543747, 54.0, 22.0 ],
                    "text": "deferlow"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 2520.4379426836967, 421.16788095235825, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 801.4598497152328, 711.6788282990456, 32.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-83",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 801.4598497152328, 770.8029155731201, 189.0, 22.0 ],
                    "text": "store Name duration SR channels"
                }
            },
            {
                "box": {
                    "id": "obj-66",
                    "local": 1,
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 2520.4379426836967, 1057.6642279028893, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-65",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 2520.4379426836967, 890.5109441280365, 48.0, 136.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 833.3333253860474, 262.2806992530823, 50.0, 165.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.gain~",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.gain~",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~"
                }
            },
            {
                "box": {
                    "id": "obj-64",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 2520.4379426836967, 738.6861274242401, 146.72897082567215, 22.0 ],
                    "text": "t l l"
                }
            },
            {
                "box": {
                    "id": "obj-63",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 2520.4379426836967, 840.1459808945656, 112.0, 22.0 ],
                    "text": "play~ playback_buf"
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2737.9452412724495, 928.6404418945312, 71.0, 22.0 ],
                    "text": "fromsymbol"
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2737.9452412724495, 890.5109441280365, 63.0, 22.0 ],
                    "text": "array.tolist"
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 2647.4452412724495, 849.6350319385529, 200.0, 22.0 ],
                    "text": "string.regexp \\\\d{2\\,6}"
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 2647.4452412724495, 807.2992657423019, 47.0, 22.0 ],
                    "text": "zl.nth 3"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.08627450980392157, 0.08627450980392157, 0.08627450980392157, 1.0 ],
                    "buffername": "playback_buf",
                    "chanoffset": 0,
                    "gridcolor": [ 0.2, 0.19607843137254902, 0.19607843137254902, 1.0 ],
                    "id": "obj-31",
                    "maxclass": "waveform~",
                    "numinlets": 5,
                    "numoutlets": 6,
                    "outlettype": [ "float", "float", "float", "float", "list", "" ],
                    "patching_rect": [ 2853.284656226635, 618.9780988693237, 284.0, 86.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 910.9375, 370.3125, 300.0000138580799, 65.3333352804184 ],
                    "waveformcolor": [ 1.0, 0.4666666666666667, 0.16862745098039217, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2520.4379426836967, 461.31386613845825, 93.0, 22.0 ],
                    "text": "refer table_data"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 220.2919692993164, 1207.0, 35.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 220.2919692993164, 1172.0, 49.0, 22.0 ],
                    "text": "r reset_"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 995.6204326152802, 770.8029155731201, 35.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 801.4598497152328, 672.9926971197128, 49.0, 22.0 ],
                    "text": "r reset_"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 472.99269819259644, 886.1313821077347, 29.5, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 144.0, 558.0, 103.0, 22.0 ],
                    "text": "join 3 @triggers 1"
                }
            },
            {
                "box": {
                    "fontsize": 36.0,
                    "id": "obj-10",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 197.52416336536407, 3606.896740913391, 243.0, 47.0 ],
                    "text": "Audio file stats"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 405.2919692993164, 1207.0, 135.0, 22.0 ],
                    "text": "push_to_coll table_data"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 995.6204326152802, 813.138681769371, 86.0, 22.0 ],
                    "saved_object_attributes": {
                        "embed": 0,
                        "precision": 6
                    },
                    "text": "coll table_data"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "dictionary", "", "", "", "" ],
                    "patching_rect": [ 291.2919692993164, 1253.0, 79.0, 22.0 ],
                    "saved_object_attributes": {
                        "legacy": 0,
                        "parameter_enable": 0,
                        "parameter_mappable": 0
                    },
                    "text": "dict data_dict"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 291.2919692993164, 1207.0, 99.0, 22.0 ],
                    "saved_object_attributes": {
                        "legacy": 0
                    },
                    "text": "dict.unpack data:"
                }
            },
            {
                "box": {
                    "checkedcolor": [ 0.6196078431372549, 0.7450980392156863, 0.9529411764705882, 1.0 ],
                    "id": "obj-2",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 472.99269819259644, 928.4671483039856, 51.0, 51.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 839.84375, 211.71875, 36.66666775941849, 36.66666775941849 ]
                }
            },
            {
                "box": {
                    "id": "obj-482",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 409.48904889822006, 928.4671483039856, 34.0, 22.0 ],
                    "text": "sel 1"
                }
            },
            {
                "box": {
                    "id": "obj-486",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 409.48904889822006, 886.1313821077347, 49.0, 22.0 ],
                    "text": "=="
                }
            },
            {
                "box": {
                    "id": "obj-492",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 437.9562020301819, 832.8467108607292, 116.0, 22.0 ],
                    "text": "r --samples_number"
                }
            },
            {
                "box": {
                    "id": "obj-233",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "bang" ],
                    "patching_rect": [ 399.0, 594.0, 130.0, 22.0 ],
                    "text": "buffer~ duration_buffer"
                }
            },
            {
                "box": {
                    "id": "obj-242",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "buffer" ],
                    "patching_rect": [ 144.0, 594.0, 229.0, 22.0 ],
                    "text": "fluid.list2buf @destination duration_buffer"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 143.79561966657639, 1070.8029139637947, 156.0, 22.0 ],
                    "text": "fluid.dataset~ temp_dataset"
                }
            },
            {
                "box": {
                    "id": "obj-265",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 995.6204326152802, 382.0, 51.0, 22.0 ],
                    "text": "s reset_"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.08627450980392157, 0.08627450980392157, 0.08627450980392157, 1.0 ],
                    "fontlink": 1,
                    "fontsize": 12.0,
                    "id": "obj-267",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 995.6204326152802, 345.296875, 47.34765434265137, 21.40625 ],
                    "presentation": 1,
                    "presentation_rect": [ 833.59375, 146.875, 47.34765434265137, 21.40625 ],
                    "text": "Reset",
                    "texton": "Reset"
                }
            },
            {
                "box": {
                    "id": "obj-269",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 570.8029166460037, 672.9926971197128, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.4, 0.905882352941176, 0.349019607843137, 1.0 ],
                    "bgcolor2": [ 0.4, 0.905882352941176, 0.349019607843137, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.243137254901961, 0.498039215686275, 0.16078431372549, 1.0 ],
                    "bgfillcolor_color1": [ 0.4, 0.905882352941176, 0.349019607843137, 1.0 ],
                    "bgfillcolor_color2": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "color",
                    "fontsize": 24.0,
                    "gradient": 1,
                    "id": "obj-271",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 180.2919698357582, 986.1313815712929, 69.0, 35.0 ],
                    "text": "dump",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-275",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 280.2919692993164, 1103.6496291160583, 74.0, 22.0 ],
                    "text": "route dump"
                }
            },
            {
                "box": {
                    "id": "obj-284",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 570.8029166460037, 630.6569309234619, 49.0, 22.0 ],
                    "text": "r reset_"
                }
            },
            {
                "box": {
                    "id": "obj-285",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 443.795618057251, 630.6569309234619, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-294",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 443.795618057251, 736.4963464140892, 38.0, 22.0 ],
                    "text": "min 1"
                }
            },
            {
                "box": {
                    "id": "obj-298",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 397.8102168440819, 736.4963464140892, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-302",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 570.8029166460037, 1007.2992646694183, 35.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "id": "obj-307",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 143.79561966657639, 664.9635000824928, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-309",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 376.6423337459564, 851.8248129487038, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-312",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 143.79561966657639, 824.8175138235092, 54.0, 22.0 ],
                    "text": "sample_"
                }
            },
            {
                "box": {
                    "id": "obj-313",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 143.79561966657639, 886.1313821077347, 251.0, 22.0 ],
                    "text": "sprintf addpoint %s%.3d duration_buffer"
                }
            },
            {
                "box": {
                    "id": "obj-314",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "int", "", "", "int" ],
                    "patching_rect": [ 376.6423337459564, 781.021893620491, 61.0, 22.0 ],
                    "text": "counter"
                }
            },
            {
                "box": {
                    "id": "obj-315",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 10,
                    "outlettype": [ "float", "list", "float", "float", "float", "float", "float", "", "int", "" ],
                    "patching_rect": [ 80.00000000000003, 500.0, 114.99999999999997, 22.0 ],
                    "text": "info~ single_sampl"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 318.77199614048004, 383.0, 127.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1057.8125, 528.90625, 127.0, 20.0 ],
                    "text": " samples paths to disk"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 272.99269926548004, 423.0, 34.0, 22.0 ],
                    "text": "write"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 80.79561966657639, 224.0, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 833.6890288591385, 476.4545284509659, 143.646422624588, 20.0 ],
                    "text": "drop an audiofiles folder"
                }
            },
            {
                "box": {
                    "bordercolor": [ 1.0, 0.4666666666666667, 0.16862745098039217, 1.0 ],
                    "id": "obj-158",
                    "maxclass": "dropfile",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 80.79561966657639, 251.0, 134.75, 44.5 ],
                    "presentation": 1,
                    "presentation_rect": [ 833.59375, 507.03125, 143.836980342865, 44.26229381561279 ]
                }
            },
            {
                "box": {
                    "id": "obj-157",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 1811.0, -145.0, 1994.0, 753.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-51",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 2264.0, 193.0, 98.0, 22.0 ],
                                    "text": "prepend cleanup"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-47",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 2264.0, 153.0, 117.0, 22.0 ],
                                    "text": "sprintf %sremaining/"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-38",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1643.0, 267.0, 107.0, 22.0 ],
                                    "text": "value folder_path2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-41",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1643.0, 300.0, 117.0, 22.0 ],
                                    "text": "sprintf %sremaining/"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-44",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1643.0, 333.0, 89.0, 22.0 ],
                                    "text": "prepend create"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-37",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1176.480520248413, 264.74026012420654, 103.0, 22.0 ],
                                    "text": "r start_node_proc"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-36",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 728.0, 394.0, 105.0, 22.0 ],
                                    "text": "s start_node_proc"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-35",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 555.0, 260.0, 107.0, 22.0 ],
                                    "text": "value folder_path2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-34",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 723.0, 145.0, 71.0, 22.0 ],
                                    "text": "t b s"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 774.5, 119.0, 84.0, 22.0 ],
                                    "text": "s --new_batch"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-28",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "patching_rect": [ 723.0, 67.0, 71.0, 22.0 ],
                                    "text": "t s b"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-33",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 723.0, 14.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 2138.0, 193.0, 98.0, 22.0 ],
                                    "text": "prepend cleanup"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 2138.0, 153.0, 113.0, 22.0 ],
                                    "text": "sprintf %s/selected/"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-103",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 2004.0, 77.0, 63.0, 22.0 ],
                                    "text": "closebang"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-101",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 2004.0, 112.0, 107.0, 22.0 ],
                                    "text": "value folder_path2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-102",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 2004.0, 153.0, 123.0, 22.0 ],
                                    "text": "sprintf %s/processed/"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-100",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 2004.0, 193.0, 98.0, 22.0 ],
                                    "text": "prepend cleanup"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1504.0, 267.0, 107.0, 22.0 ],
                                    "text": "value folder_path2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1504.0, 300.0, 109.0, 22.0 ],
                                    "text": "sprintf %sselected/"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1504.0, 333.0, 89.0, 22.0 ],
                                    "text": "prepend create"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-53",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 641.0, 606.0, 82.0, 22.0 ],
                                    "text": "r --new_batch"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-50",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1364.0, 267.0, 107.0, 22.0 ],
                                    "text": "value folder_path2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-49",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "bang" ],
                                    "patching_rect": [ 1317.0, 559.0, 82.0, 22.0 ],
                                    "text": "t b b"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-45",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1429.0, 632.0, 29.5, 22.0 ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-43",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 1429.0, 524.0, 71.0, 22.0 ],
                                    "text": "sel success"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-42",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 1317.0, 476.0, 243.0, 22.0 ],
                                    "text": "route loadend stop"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-32",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1380.0, 632.0, 29.5, 22.0 ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-22",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1380.0, 674.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 1317.0, 524.0, 71.0, 22.0 ],
                                    "text": "sel success"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-48",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1364.0, 300.0, 120.0, 22.0 ],
                                    "text": "sprintf %sprocessed/"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-225",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1364.0, 333.0, 89.0, 22.0 ],
                                    "text": "prepend create"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-219",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1257.0, 305.0, 65.0, 22.0 ],
                                    "text": "script stop"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-224",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1176.480520248413, 305.0, 66.0, 22.0 ],
                                    "text": "script start"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-215",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 1257.0, 427.0, 79.0, 22.0 ],
                                    "text": "route running"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-213",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 1176.0, 375.0, 100.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "autostart": 0,
                                        "defer": 0,
                                        "node_bin_path": "",
                                        "npm_bin_path": "",
                                        "watch": 0
                                    },
                                    "text": "node.script",
                                    "textfile": {
                                        "text": "const maxApi = require(\"max-api\");\nconst fs = require(\"fs\");\nconst path = require(\"path\");\n\n// Handler for folder creation\nmaxApi.addHandler(\"create\", (...args) => {\n    const folderPath = args.join(\" \");\n    const resolved = path.resolve(folderPath);\n\n    if (!fs.existsSync(resolved)) {\n        fs.mkdirSync(resolved, { recursive: true });\n        maxApi.outlet(\"created\", resolved);\n    } else {\n        maxApi.outlet(\"exists\", resolved);\n    }\n});\n\n// Handler for cleanup — deletes the folder only if empty\nmaxApi.addHandler(\"cleanup\", (...args) => {\n    const folderPath = args.join(\" \");\n    const resolved = path.resolve(folderPath);\n\n    // If the folder doesn't exist, nothing to do\n    if (!fs.existsSync(resolved)) {\n        maxApi.outlet(\"not_found\", resolved);\n        return;\n    }\n\n    // Read the folder contents, ignoring hidden files like .DS_Store\n    const contents = fs.readdirSync(resolved).filter((filename) => {\n        return !filename.startsWith(\".\");\n    });\n\n    if (contents.length === 0) {\n        fs.rmSync(resolved, { recursive: true });\n        maxApi.outlet(\"deleted\", resolved);\n    } else {\n        maxApi.outlet(\"not_empty\", contents.length, resolved);\n    }\n});",
                                        "flags": 2,
                                        "embed": 1,
                                        "autowatch": 0
                                    }
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 829.0, 769.0, 29.5, 22.0 ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 829.0, 676.0, 82.0, 22.0 ],
                                    "text": "r --new_batch"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 589.0, 741.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 728.0, 769.0, 29.5, 22.0 ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 589.0, 799.0, 68.0, 22.0 ],
                                    "text": "gate"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 728.0, 721.0, 34.0, 22.0 ],
                                    "text": "sel 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-90",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 728.0, 676.0, 86.0, 22.0 ],
                                    "text": "r end_analysis"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-265",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 572.0, 606.0, 49.0, 22.0 ],
                                    "text": "r reset_"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 572.0, 650.0, 53.0, 22.0 ],
                                    "text": "clearlow"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-72",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 282.0, 225.0, 116.0, 22.0 ],
                                    "text": "r --samples_number"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-70",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [ "bang", "bang", "int" ],
                                    "patching_rect": [ 250.0, 260.0, 51.0, 22.0 ],
                                    "text": "uzi"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-8",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 589.0, 836.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 638.0, 741.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-84",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 434.0, 345.0, 115.0, 22.0 ],
                                    "text": "prepend naturalSort"
                                }
                            },
                            {
                                "box": {
                                    "filename": "none",
                                    "id": "obj-71",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 434.0, 388.0, 100.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0
                                    },
                                    "text": "v8 @embed 1",
                                    "textfile": {
                                        "text": "\r\n\r\nautowatch = 1;\r\n\r\n\r\nfunction extractSortKey(filepath) {\r\n    var lastSlash = filepath.lastIndexOf(\"/\");\r\n    var filename;\r\n    if (lastSlash >= 0) {\r\n        filename = filepath.substring(lastSlash + 1);\r\n    } else {\r\n        filename = filepath;\r\n    }\r\n    \r\n    // Step 2: remove file extension\r\n    var lastDot = filename.lastIndexOf(\".\");\r\n    if (lastDot > 0) {\r\n        filename = filename.substring(0, lastDot);\r\n    }\r\n    \r\n    // Step 3: lowercase for case-insensitive sorting\r\n    filename = filename.toLowerCase();\r\n    \r\n\r\n    \r\n    var parts = filename.split(/(\\d+)/);\r\n    var key = [];\r\n    \r\n    for (var i = 0; i < parts.length; i++) {\r\n        var segment = parts[i];\r\n        if (segment === \"\" || segment === undefined) continue;\r\n        \r\n        // Is this segment purely digits?\r\n        if (/^\\d+$/.test(segment)) {\r\n            // Store as a number so comparison is numeric\r\n            // parseInt(\"0042\") → 42, which is correct:\r\n            // leading zeros don't affect numeric value\r\n            key.push(parseInt(segment, 10));\r\n        } else {\r\n            // Store as string for alphabetical comparison\r\n            key.push(segment);\r\n        }\r\n    }\r\n    \r\n    return key;\r\n}\r\n\r\n\r\nfunction compareNatural(entryA, entryB) {\r\n    var keyA = entryA.sortKey;\r\n    var keyB = entryB.sortKey;\r\n    \r\n    // Compare element by element up to the shorter key length\r\n    var minLen = keyA.length < keyB.length ? keyA.length : keyB.length;\r\n    \r\n    for (var i = 0; i < minLen; i++) {\r\n        var a = keyA[i];\r\n        var b = keyB[i];\r\n        \r\n        var aIsNum = (typeof a === \"number\");\r\n        var bIsNum = (typeof b === \"number\");\r\n        \r\n        if (aIsNum && bIsNum) {\r\n            // Both numbers → numeric comparison\r\n            if (a !== b) return a - b;\r\n        } else if (!aIsNum && !bIsNum) {\r\n            // Both strings → alphabetical comparison\r\n            if (a < b) return -1;\r\n            if (a > b) return 1;\r\n        } else {\r\n            // Mixed types → numbers come first\r\n            return aIsNum ? -1 : 1;\r\n        }\r\n    }\r\n    \r\n    // All compared elements were equal →\r\n    // shorter key is \"less than\" longer key\r\n    return keyA.length - keyB.length;\r\n}\r\n\r\nfunction naturalSort() {\r\n    // Collect all arguments into an array\r\n    // In v8, function arguments from Max messages arrive as\r\n    // individual parameters. We use the rest-style arguments object.\r\n    var paths = [];\r\n    for (var i = 0; i < arguments.length; i++) {\r\n        paths.push(arguments[i].toString());\r\n    }\r\n    \r\n    if (paths.length === 0) {\r\n        post(\"naturalSort: received empty list, nothing to sort\\n\");\r\n        return;\r\n    }\r\n    \r\n    post(\"naturalSort: sorting \" + paths.length + \" files...\\n\");\r\n    \r\n    // Step 1: wrap each path with its pre-computed sort key\r\n    // Pre-computing avoids redundant parsing during sort.\r\n    // With 1700 files, sort does ~1700 × log2(1700) ≈ 18,400 comparisons.\r\n    // Without pre-computation, we'd parse filenames ~36,800 times\r\n    // instead of 1,700 times.\r\n    var entries = [];\r\n    for (var j = 0; j < paths.length; j++) {\r\n        entries.push({\r\n            path: paths[j],\r\n            sortKey: extractSortKey(paths[j])\r\n        });\r\n    }\r\n    \r\n    // Step 2: sort using natural comparison\r\n    entries.sort(compareNatural);\r\n    \r\n    // Step 3: extract sorted paths back into a flat array\r\n    var sortedPaths = [];\r\n    for (var k = 0; k < entries.length; k++) {\r\n        sortedPaths.push(entries[k].path);\r\n    }\r\n    \r\n    // Step 4: output the sorted list\r\n    // outlet() with an array sends it as a Max list message,\r\n    // which is exactly what [t l l] expects downstream.\r\n    outlet(0, sortedPaths);\r\n    \r\n    post(\"naturalSort: done. \" + paths.length + \" files in natural order.\\n\");\r\n}\r\n\r\n\r\n",
                                        "filename": "none",
                                        "flags": 0,
                                        "embed": 1,
                                        "autowatch": 1
                                    }
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-58",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 607.0, 463.0, 82.0, 22.0 ],
                                    "text": "r --new_batch"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-57",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 955.0, 14.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-40",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 324.0, 119.0, 84.0, 22.0 ],
                                    "text": "s --new_batch"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-39",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "patching_rect": [ 250.0, 67.0, 93.0, 22.0 ],
                                    "text": "t s b"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-30",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 434.0, 606.0, 100.0, 22.0 ],
                                    "text": "route symbol"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 581.0, 394.0, 118.0, 22.0 ],
                                    "text": "s --samples_number"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "bang" ],
                                    "patching_rect": [ 434.0, 305.0, 313.0, 22.0 ],
                                    "text": "t l l b"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 581.0, 345.0, 142.0, 22.0 ],
                                    "text": "zl.len @zlmaxsize 32767"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 250.0, 152.0, 203.0, 22.0 ],
                                    "text": "t b s"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 540.0, 463.0, 58.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 540.0, 506.0, 35.0, 22.0 ],
                                    "text": "clear"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-27",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "list" ],
                                    "patching_rect": [ 434.0, 434.0, 66.0, 22.0 ],
                                    "text": "listfunnel 1"
                                }
                            },
                            {
                                "box": {
                                    "coll_data": {
                                        "count": 5,
                                        "data": [
                                            {
                                                "key": 1,
                                                "value": [ "/Users/matteolorito2/Desktop/audio/knock/sliced/slice_1.wav" ]
                                            },
                                            {
                                                "key": 2,
                                                "value": [ "/Users/matteolorito2/Desktop/audio/knock/sliced/slice_2.wav" ]
                                            },
                                            {
                                                "key": 3,
                                                "value": [ "/Users/matteolorito2/Desktop/audio/knock/sliced/slice_3.wav" ]
                                            },
                                            {
                                                "key": 4,
                                                "value": [ "/Users/matteolorito2/Desktop/audio/knock/sliced/slice_4.wav" ]
                                            },
                                            {
                                                "key": 5,
                                                "value": [ "/Users/matteolorito2/Desktop/audio/knock/sliced/slice_5.wav" ]
                                            }
                                        ]
                                    },
                                    "id": "obj-26",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "", "" ],
                                    "patching_rect": [ 434.0, 561.0, 137.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "embed": 1,
                                        "precision": 6
                                    },
                                    "text": "coll samples"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "", "" ],
                                    "patching_rect": [ 1000.0, 17648.0, 50.5, 22.0 ],
                                    "saved_object_attributes": {
                                        "embed": 0,
                                        "precision": 6
                                    },
                                    "text": "coll"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-31",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "int" ],
                                    "patching_rect": [ 434.0, 200.0, 138.0, 22.0 ],
                                    "text": "conformpath max boot"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-135",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 434.0, 260.0, 101.0, 22.0 ],
                                    "text": "fluid.audiofilesin"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 434.0, 650.0, 95.0, 22.0 ],
                                    "text": "prepend replace"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "bang" ],
                                    "patching_rect": [ 434.0, 695.0, 222.51953125, 22.0 ],
                                    "text": "buffer~ single_sampl"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-282",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 250.0, 14.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-213", 0 ],
                                    "midpoints": [ 2013.5, 364.96875, 1185.5, 364.96875 ],
                                    "source": [ "obj-100", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-102", 0 ],
                                    "order": 2,
                                    "source": [ "obj-101", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "midpoints": [ 2013.5, 142.31640625, 2147.5, 142.31640625 ],
                                    "order": 1,
                                    "source": [ "obj-101", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-47", 0 ],
                                    "midpoints": [ 2013.5, 143.1796875, 2273.5, 143.1796875 ],
                                    "order": 0,
                                    "source": [ "obj-101", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-100", 0 ],
                                    "source": [ "obj-102", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-101", 0 ],
                                    "source": [ "obj-103", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "midpoints": [ 737.5, 801.0, 695.35546875, 801.0, 695.35546875, 731.0, 598.5, 731.0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-135", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-14", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "source": [ "obj-14", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-84", 0 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-213", 0 ],
                                    "midpoints": [ 1513.5, 365.0, 1185.5, 365.0 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-2", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "midpoints": [ 838.5, 801.0, 696.53125, 801.0, 696.53125, 731.0, 598.5, 731.0 ],
                                    "source": [ "obj-20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-49", 0 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-215", 0 ],
                                    "source": [ "obj-213", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-42", 0 ],
                                    "source": [ "obj-215", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-213", 0 ],
                                    "midpoints": [ 1266.5, 345.5, 1185.5, 345.5 ],
                                    "source": [ "obj-219", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-213", 0 ],
                                    "source": [ "obj-224", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-213", 0 ],
                                    "midpoints": [ 1373.5, 365.0, 1185.5, 365.0 ],
                                    "source": [ "obj-225", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-213", 0 ],
                                    "midpoints": [ 2147.5, 365.8359375, 1185.5, 365.8359375 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-265", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-29", 0 ],
                                    "source": [ "obj-28", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 0 ],
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-39", 0 ],
                                    "source": [ "obj-282", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-31", 0 ],
                                    "source": [ "obj-3", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-70", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-135", 0 ],
                                    "order": 1,
                                    "source": [ "obj-31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-35", 0 ],
                                    "midpoints": [ 443.5, 241.0, 564.5, 241.0 ],
                                    "order": 0,
                                    "source": [ "obj-31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 0 ],
                                    "source": [ "obj-32", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-28", 0 ],
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-135", 0 ],
                                    "midpoints": [ 784.5, 249.26171875, 443.5, 249.26171875 ],
                                    "source": [ "obj-34", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-70", 0 ],
                                    "midpoints": [ 732.5, 191.42578125, 259.5, 191.42578125 ],
                                    "source": [ "obj-34", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-224", 0 ],
                                    "source": [ "obj-37", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-41", 0 ],
                                    "source": [ "obj-38", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-40", 0 ],
                                    "source": [ "obj-39", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "midpoints": [ 549.5, 539.5, 443.5, 539.5 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-44", 0 ],
                                    "source": [ "obj-41", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 0 ],
                                    "source": [ "obj-42", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-43", 0 ],
                                    "source": [ "obj-42", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-45", 0 ],
                                    "source": [ "obj-43", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-213", 0 ],
                                    "midpoints": [ 1652.5, 365.0, 1185.5, 365.0 ],
                                    "source": [ "obj-44", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 0 ],
                                    "source": [ "obj-45", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-51", 0 ],
                                    "source": [ "obj-47", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-225", 0 ],
                                    "source": [ "obj-48", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.0, 0.8470588235294118, 0.19215686274509805, 1.0 ],
                                    "destination": [ "obj-11", 0 ],
                                    "midpoints": [ 1326.5, 807.23046875, 1918.01953125, 807.23046875, 1918.01953125, 245.40234375, 1513.5, 245.40234375 ],
                                    "order": 1,
                                    "source": [ "obj-49", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-32", 0 ],
                                    "source": [ "obj-49", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.0, 0.8470588235294118, 0.19215686274509805, 1.0 ],
                                    "destination": [ "obj-38", 0 ],
                                    "midpoints": [ 1326.5, 806.71484375, 1879.4609375, 806.71484375, 1879.4609375, 257.0, 1652.5, 257.0 ],
                                    "order": 0,
                                    "source": [ "obj-49", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.0, 0.846557796, 0.1909628212, 1.0 ],
                                    "destination": [ "obj-50", 0 ],
                                    "midpoints": [ 1326.5, 806.65234375, 1942.76171875, 806.65234375, 1942.76171875, 234.0, 1373.5, 234.0 ],
                                    "order": 2,
                                    "source": [ "obj-49", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-48", 0 ],
                                    "source": [ "obj-50", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-213", 0 ],
                                    "midpoints": [ 2273.5, 365.90625, 1185.5, 365.90625 ],
                                    "source": [ "obj-51", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "midpoints": [ 650.5, 639.0, 581.5, 639.0 ],
                                    "source": [ "obj-53", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "midpoints": [ 964.5, 540.50390625, 443.5, 540.50390625 ],
                                    "source": [ "obj-57", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "midpoints": [ 616.5, 495.48245573043823, 549.5, 495.48245573043823 ],
                                    "source": [ "obj-58", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "midpoints": [ 581.5, 683.5, 443.5, 683.5 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 1 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "midpoints": [ 291.5, 539.8359375, 443.5, 539.8359375 ],
                                    "source": [ "obj-70", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-27", 0 ],
                                    "source": [ "obj-71", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-70", 1 ],
                                    "source": [ "obj-72", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-71", 0 ],
                                    "source": [ "obj-84", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-90", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "packagemanager" ]
                    },
                    "patching_rect": [ 80.99269926548004, 455.0, 211.0, 22.0 ],
                    "text": "p folder_reading_v3"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.25882352941176473, 0.2235294117647059, 0.2235294117647059, 1.0 ],
                    "border": 0,
                    "bordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "colhead": 1,
                    "cols": 4,
                    "colwidth": 72,
                    "fgcolor": [ 0.8007417929292929, 0.8007417929292929, 0.8007417929292929, 1.0 ],
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 10.0,
                    "gridlinecolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "hcellcolor": [ 1.0, 0.4666666666666667, 0.16862745098039217, 1.0 ],
                    "headercolor": [ 0.25098039215686274, 0.24705882352941178, 0.24705882352941178, 1.0 ],
                    "hscroll": 0,
                    "id": "obj-104",
                    "just": 1,
                    "maxclass": "jit.cellblock",
                    "numinlets": 2,
                    "numoutlets": 4,
                    "outlettype": [ "list", "", "", "" ],
                    "outmode": 1,
                    "patching_rect": [ 2053.2846605181694, 936.4963453412056, 309.3458020687103, 20.560747504234314 ],
                    "precision": 0,
                    "presentation": 1,
                    "presentation_rect": [ 1499.21875, 147.65625, 284.7479009628296, 20.168066024780273 ],
                    "rowhead": 1,
                    "rowheight": 15,
                    "rows": 1,
                    "textcolor": [ 0.9647058823529412, 0.9647058823529412, 0.9647058823529412, 1.0 ],
                    "vscroll": 0
                }
            },
            {
                "box": {
                    "background": 1,
                    "border": 4,
                    "bordercolor": [ 0.17254901960784313, 0.17254901960784313, 0.17254901960784313, 1.0 ],
                    "id": "obj-182",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 276.8345123529434, 3544.827772140503, 128.0, 128.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 824.21875, 17.96875, 975.78125, 93.8911167383194 ],
                    "rounded": 10
                }
            },
            {
                "box": {
                    "background": 1,
                    "border": 4,
                    "bordercolor": [ 0.17254901960784313, 0.17254901960784313, 0.17254901960784313, 1.0 ],
                    "id": "obj-109",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 197.52416336536407, 3534.4829440116882, 128.0, 128.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1486.71875, 131.25, 314.7825983762741, 239.13042694330215 ],
                    "rounded": 10
                }
            },
            {
                "box": {
                    "background": 1,
                    "border": 4,
                    "bordercolor": [ 0.17254901960784313, 0.17254901960784313, 0.17254901960784313, 1.0 ],
                    "id": "obj-339",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 159.59312689304352, 3527.5863919258118, 128.0, 128.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 820.3883382678032, 459.2232946753502, 397.0873731970787, 132.6517053246498 ],
                    "rounded": 10
                }
            },
            {
                "box": {
                    "background": 1,
                    "border": 4,
                    "bordercolor": [ 0.17254901960784313, 0.17254901960784313, 0.17254901960784313, 1.0 ],
                    "id": "obj-319",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 152.69657480716705, 3534.4829440116882, 128.0, 128.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1232.8125, 381.25, 568.9286021590233, 370.0000088214874 ],
                    "rounded": 10
                }
            },
            {
                "box": {
                    "background": 1,
                    "border": 4,
                    "bordercolor": [ 0.17254901960784313, 0.17254901960784313, 0.17254901960784313, 1.0 ],
                    "id": "obj-308",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 218.21381962299347, 3534.4829440116882, 128.0, 128.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 821.3592120409012, 606.796108186245, 397.0873731970787, 144.6601921916008 ],
                    "rounded": 10
                }
            },
            {
                "box": {
                    "background": 1,
                    "border": 4,
                    "bordercolor": [ 0.17254901960784313, 0.17254901960784313, 0.17254901960784313, 1.0 ],
                    "id": "obj-106",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 183.73105919361115, 3551.7243242263794, 128.0, 128.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 824.21875, 131.25, 65.3333352804184, 53.33333492279053 ],
                    "rounded": 10
                }
            },
            {
                "box": {
                    "background": 1,
                    "border": 4,
                    "bordercolor": [ 0.17254901960784313, 0.17254901960784313, 0.17254901960784313, 1.0 ],
                    "id": "obj-105",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 166.48967897891998, 3534.4829440116882, 128.0, 128.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 825.0, 195.3125, 65.3333352804184, 250.0000074505806 ],
                    "rounded": 10
                }
            },
            {
                "box": {
                    "background": 1,
                    "border": 4,
                    "bordercolor": [ 0.17254901960784313, 0.17254901960784313, 0.17254901960784313, 1.0 ],
                    "id": "obj-101",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 152.69657480716705, 3524.1381158828735, 128.0, 128.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 902.34375, 130.46875, 314.6666662096977, 315.00000178813934 ],
                    "rounded": 10
                }
            },
            {
                "box": {
                    "background": 1,
                    "border": 4,
                    "bordercolor": [ 0.17254901960784313, 0.17254901960784313, 0.17254901960784313, 1.0 ],
                    "id": "obj-119",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 138.90347063541412, 3544.827772140503, 128.0, 128.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1232.03125, 204.6875, 239.13042694330215, 165.21738588809967 ],
                    "rounded": 10
                }
            },
            {
                "box": {
                    "background": 1,
                    "border": 4,
                    "bordercolor": [ 0.17254901960784313, 0.17254901960784313, 0.17254901960784313, 1.0 ],
                    "id": "obj-438",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 169.93795502185822, 3534.4829440116882, 128.0, 128.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 422.72725760936737, 130.909086227417, 382.72725903987885, 247.27271842956543 ],
                    "rounded": 10
                }
            },
            {
                "box": {
                    "background": 1,
                    "border": 4,
                    "bordercolor": [ 0.17254901960784313, 0.17254901960784313, 0.17254901960784313, 1.0 ],
                    "id": "obj-439",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 190.6276112794876, 3534.4829440116882, 128.0, 128.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 17.96875, 404.5454400777817, 787.0690068006516, 227.58621883392334 ],
                    "rounded": 10
                }
            },
            {
                "box": {
                    "background": 1,
                    "border": 4,
                    "bordercolor": [ 0.17254901960784313, 0.17254901960784313, 0.17254901960784313, 1.0 ],
                    "id": "obj-440",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 121.66209042072296, 3544.827772140503, 128.0, 128.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 18.181817531585693, 130.909086227417, 382.72725903987885, 247.27271842956543 ],
                    "rounded": 10
                }
            },
            {
                "box": {
                    "background": 1,
                    "border": 4,
                    "bordercolor": [ 0.17254901960784313, 0.17254901960784313, 0.17254901960784313, 1.0 ],
                    "id": "obj-441",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 249.24830400943756, 3627.5863971710205, 128.0, 128.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 17.96875, 17.96875, 787.0690068006516, 93.96552217006683 ],
                    "rounded": 10
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-55", 0 ],
                    "midpoints": [ 1443.8065616488457, 911.6678330004215, 1443.8065616488457, 911.6678330004215 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-103", 0 ],
                    "source": [ "obj-102", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-104", 0 ],
                    "source": [ "obj-103", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-167", 0 ],
                    "source": [ "obj-107", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-137", 0 ],
                    "midpoints": [ 6781.499360084534, 1533.287441253662, 6589.4993724823, 1533.287441253662 ],
                    "order": 0,
                    "source": [ "obj-108", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-424", 0 ],
                    "source": [ "obj-108", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-94", 0 ],
                    "midpoints": [ 6781.499360084534, 1532.490566253662, 6469.499383926392, 1532.490566253662 ],
                    "order": 1,
                    "source": [ "obj-108", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-275", 0 ],
                    "source": [ "obj-11", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-107", 0 ],
                    "midpoints": [ 3432.1667668819427, 605.6924052834511, 3372.1667668819427, 605.6924052834511 ],
                    "source": [ "obj-110", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-117", 0 ],
                    "order": 1,
                    "source": [ "obj-111", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-150", 0 ],
                    "midpoints": [ 3372.1667668819427, 827.7978379470296, 3648.1667751073837, 827.7978379470296 ],
                    "order": 0,
                    "source": [ "obj-111", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-67", 0 ],
                    "midpoints": [ 3410.1667668819427, 826.2045104503632, 3348.009054481983, 826.2045104503632, 3348.009054481983, 874.6849792003632, 3372.1667668819427, 874.6849792003632 ],
                    "source": [ "obj-111", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-67", 0 ],
                    "midpoints": [ 3391.1667668819427, 826.9271667003632, 3348.009054481983, 826.9271667003632, 3348.009054481983, 875.9115417003632, 3372.1667668819427, 875.9115417003632 ],
                    "source": [ "obj-111", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-116", 1 ],
                    "source": [ "obj-113", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-112", 0 ],
                    "source": [ "obj-115", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-115", 0 ],
                    "source": [ "obj-116", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-67", 0 ],
                    "source": [ "obj-117", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-242", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-163", 0 ],
                    "source": [ "obj-121", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-159", 0 ],
                    "source": [ "obj-122", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-62", 0 ],
                    "source": [ "obj-123", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-423", 1 ],
                    "source": [ "obj-124", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-128", 0 ],
                    "midpoints": [ 3472.9616540670395, 1255.3234633803368, 3601.830356180668, 1255.3234633803368 ],
                    "source": [ "obj-125", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-125", 0 ],
                    "source": [ "obj-126", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-128", 0 ],
                    "midpoints": [ 3716.1039459109306, 1251.822189467959, 3601.830356180668, 1251.822189467959 ],
                    "source": [ "obj-127", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-128", 0 ],
                    "source": [ "obj-129", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-530", 0 ],
                    "source": [ "obj-130", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-154", 0 ],
                    "source": [ "obj-133", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-191", 0 ],
                    "source": [ "obj-134", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-549", 0 ],
                    "source": [ "obj-134", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-140", 0 ],
                    "source": [ "obj-138", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-389", 0 ],
                    "source": [ "obj-139", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-139", 0 ],
                    "midpoints": [ 6024.499429225922, 979.6447720527649, 6284.4994015693665, 979.6447720527649 ],
                    "source": [ "obj-140", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-399", 0 ],
                    "midpoints": [ 5994.499429225922, 1073.644772052765, 6094.4994196891785, 1073.644772052765 ],
                    "source": [ "obj-140", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-427", 0 ],
                    "source": [ "obj-141", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-189", 0 ],
                    "source": [ "obj-144", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-146", 0 ],
                    "source": [ "obj-145", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-131", 0 ],
                    "source": [ "obj-146", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-142", 0 ],
                    "midpoints": [ 7499.499285697937, 982.1565451025963, 7409.499294281006, 982.1565451025963 ],
                    "source": [ "obj-147", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-428", 1 ],
                    "midpoints": [ 7509.999285697937, 1100.197164086625, 6969.166023890178, 1100.197164086625 ],
                    "order": 1,
                    "source": [ "obj-147", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-619", 1 ],
                    "midpoints": [ 7509.999285697937, 984.31799575896, 8082.499231338501, 984.31799575896 ],
                    "order": 0,
                    "source": [ "obj-147", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-122", 0 ],
                    "source": [ "obj-148", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-141", 0 ],
                    "source": [ "obj-149", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-67", 0 ],
                    "midpoints": [ 3648.1667751073837, 911.0834167003632, 3372.1667668819427, 911.0834167003632 ],
                    "source": [ "obj-150", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-142", 0 ],
                    "midpoints": [ 7339.499300956726, 982.1565451025963, 7409.499294281006, 982.1565451025963 ],
                    "source": [ "obj-151", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-276", 0 ],
                    "order": 1,
                    "source": [ "obj-151", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-586", 0 ],
                    "midpoints": [ 7349.999300956726, 983.8232630582061, 7189.499315261841, 983.8232630582061 ],
                    "order": 2,
                    "source": [ "obj-151", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-619", 1 ],
                    "midpoints": [ 7349.999300956726, 985.0297653551679, 8082.499231338501, 985.0297653551679 ],
                    "order": 0,
                    "source": [ "obj-151", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-229", 0 ],
                    "midpoints": [ 623.5, 1627.1962391361594, 905.120433151722, 1627.1962391361594 ],
                    "source": [ "obj-153", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-246", 0 ],
                    "source": [ "obj-153", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-123", 0 ],
                    "source": [ "obj-154", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-144", 0 ],
                    "source": [ "obj-155", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-232", 0 ],
                    "source": [ "obj-157", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-315", 0 ],
                    "source": [ "obj-157", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-536", 0 ],
                    "source": [ "obj-158", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-121", 0 ],
                    "order": 1,
                    "source": [ "obj-159", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-194", 0 ],
                    "midpoints": [ 401.39186573028564, 2454.262498319149, 824.3648104667664, 2454.262498319149 ],
                    "order": 0,
                    "source": [ "obj-159", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-184", 0 ],
                    "source": [ "obj-160", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-280", 0 ],
                    "source": [ "obj-162", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-160", 0 ],
                    "source": [ "obj-163", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-107", 0 ],
                    "source": [ "obj-164", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 0 ],
                    "source": [ "obj-164", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-168", 0 ],
                    "source": [ "obj-166", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-71", 0 ],
                    "source": [ "obj-167", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-112", 0 ],
                    "midpoints": [ 429.9379539489746, 1980.1189338862896, 205.12043690681458, 1980.1189338862896 ],
                    "source": [ "obj-168", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-170", 0 ],
                    "source": [ "obj-169", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-271", 0 ],
                    "midpoints": [ 418.98904889822006, 1015.0109468102455, 304.99269926548004, 1015.0109468102455, 304.99269926548004, 978.0109468102455, 189.7919698357582, 978.0109468102455 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-176", 0 ],
                    "source": [ "obj-171", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-180", 0 ],
                    "source": [ "obj-173", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-173", 0 ],
                    "source": [ "obj-174", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-173", 0 ],
                    "source": [ "obj-175", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-174", 0 ],
                    "source": [ "obj-176", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-175", 0 ],
                    "source": [ "obj-176", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-277", 0 ],
                    "midpoints": [ 4209.500195264816, 1117.4170985654928, 3934.8931970596313, 1117.4170985654928 ],
                    "source": [ "obj-177", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-324", 0 ],
                    "source": [ "obj-179", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-428", 1 ],
                    "midpoints": [ 7034.499330043793, 1025.7860697805882, 6969.166023890178, 1025.7860697805882 ],
                    "source": [ "obj-180", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-186", 0 ],
                    "order": 1,
                    "source": [ "obj-184", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-188", 0 ],
                    "source": [ "obj-184", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-192", 0 ],
                    "order": 1,
                    "source": [ "obj-184", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-244", 1 ],
                    "midpoints": [ 498.9314927657445, 2662.070437312126, 614.7702322006226, 2662.070437312126 ],
                    "order": 0,
                    "source": [ "obj-184", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-244", 0 ],
                    "midpoints": [ 398.6891632080078, 2663.277468562126, 579.7702322006226, 2663.277468562126 ],
                    "order": 0,
                    "source": [ "obj-184", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-296", 1 ],
                    "source": [ "obj-186", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-187", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-293", 1 ],
                    "midpoints": [ 448.6891598701477, 2828.109499812126, 507.8378052711487, 2828.109499812126 ],
                    "source": [ "obj-188", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-199", 0 ],
                    "source": [ "obj-189", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "source": [ "obj-190", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-299", 1 ],
                    "midpoints": [ 498.6891565322876, 2847.609499812126, 613.2432036399841, 2847.609499812126 ],
                    "source": [ "obj-192", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-213", 0 ],
                    "source": [ "obj-194", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-74", 0 ],
                    "source": [ "obj-195", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-195", 0 ],
                    "source": [ "obj-196", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-196", 0 ],
                    "source": [ "obj-197", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-197", 0 ],
                    "source": [ "obj-199", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-90", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-405", 0 ],
                    "source": [ "obj-202", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-291", 1 ],
                    "midpoints": [ 874.3648071289062, 2879.867312312126, 286.21619844436646, 2879.867312312126 ],
                    "source": [ "obj-203", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-190", 0 ],
                    "source": [ "obj-204", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-292", 1 ],
                    "midpoints": [ 824.3648104667664, 2877.824343562126, 176.75674629211426, 2877.824343562126 ],
                    "source": [ "obj-206", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-208", 0 ],
                    "source": [ "obj-207", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-62", 0 ],
                    "midpoints": [ 3269.115493416786, 1065.9527576453984, 3372.1667668819427, 1065.9527576453984 ],
                    "source": [ "obj-208", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "midpoints": [ 1005.1204326152802, 810.5267341136932, 1005.1204326152802, 810.5267341136932 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-205", 0 ],
                    "source": [ "obj-211", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-546", 1 ],
                    "midpoints": [ 3957.1431970596313, 1331.3571250140667, 4537.115530967712, 1331.3571250140667 ],
                    "source": [ "obj-211", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-203", 0 ],
                    "source": [ "obj-212", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-206", 0 ],
                    "source": [ "obj-212", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-214", 0 ],
                    "source": [ "obj-213", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-212", 0 ],
                    "source": [ "obj-214", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-267", 0 ],
                    "midpoints": [ 578.5, 335.6484375, 1005.1204326152802, 335.6484375 ],
                    "source": [ "obj-215", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-279", 0 ],
                    "midpoints": [ 534.5, 369.3503344655037, 635.5, 369.3503344655037 ],
                    "source": [ "obj-215", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-599", 0 ],
                    "source": [ "obj-215", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-221", 0 ],
                    "source": [ "obj-216", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-217", 0 ],
                    "source": [ "obj-218", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-70", 2 ],
                    "source": [ "obj-218", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "midpoints": [ 414.7919692993164, 1240.7084238706157, 300.7919692993164, 1240.7084238706157 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-204", 0 ],
                    "order": 0,
                    "source": [ "obj-221", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-222", 0 ],
                    "order": 1,
                    "source": [ "obj-221", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-222", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-239", 0 ],
                    "midpoints": [ 948.3947277069092, 1845.138676404953, 670.0758981548715, 1845.138676404953, 670.0758981548715, 1693.6496258974075, 468.62408512830734, 1693.6496258974075 ],
                    "source": [ "obj-222", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-224", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-236", 0 ],
                    "source": [ "obj-224", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-68", 0 ],
                    "midpoints": [ 4409.500146865845, 1494.0666624307632, 3957.97012090683, 1494.0666624307632 ],
                    "source": [ "obj-227", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-216", 0 ],
                    "source": [ "obj-229", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-326", 0 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-546", 0 ],
                    "midpoints": [ 4145.077061116695, 1340.465939808404, 4083.538597524166, 1340.465939808404 ],
                    "source": [ "obj-230", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-326", 0 ],
                    "midpoints": [ 2794.462158679962, 1945.598393959226, 2623.785482108593, 1945.598393959226 ],
                    "source": [ "obj-236", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-238", 1 ],
                    "source": [ "obj-237", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-243", 0 ],
                    "midpoints": [ 2875.07368850708, 1715.79102591821, 2829.966701068217, 1715.79102591821, 2829.966701068217, 1681.2515196700115, 2408.770060122013, 1681.2515196700115 ],
                    "source": [ "obj-238", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 0 ],
                    "midpoints": [ 468.62408512830734, 1746.7840177416801, 253.29561913013458, 1746.7840177416801 ],
                    "source": [ "obj-239", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-241", 0 ],
                    "source": [ "obj-240", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-237", 0 ],
                    "source": [ "obj-241", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-238", 0 ],
                    "midpoints": [ 3019.303195953369, 1639.798953294754, 2875.07368850708, 1639.798953294754 ],
                    "source": [ "obj-241", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-307", 0 ],
                    "source": [ "obj-242", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-224", 1 ],
                    "midpoints": [ 2431.020060122013, 1743.6788229346275, 2514.241775006056, 1743.6788229346275, 2514.241775006056, 1713.9668465852737, 2794.462158679962, 1713.9668465852737 ],
                    "source": [ "obj-243", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-249", 0 ],
                    "source": [ "obj-243", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 4 ],
                    "midpoints": [ 2497.770060122013, 1788.737783221528, 2591.077650894178, 1788.737783221528, 2591.077650894178, 2029.8023956571706, 2497.7479072213173, 2029.8023956571706 ],
                    "source": [ "obj-243", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 3 ],
                    "midpoints": [ 2475.520060122013, 1796.2477684568148, 2571.6756319405977, 1796.2477684568148, 2571.6756319405977, 2022.2806623026263, 2475.4979072213173, 2022.2806623026263 ],
                    "source": [ "obj-243", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 2 ],
                    "midpoints": [ 2453.270060122013, 1803.0, 2553.8733402653597, 1803.0, 2553.8733402653597, 2012.926222343929, 2453.2479072213173, 2012.926222343929 ],
                    "source": [ "obj-243", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-250", 0 ],
                    "source": [ "obj-244", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-216", 0 ],
                    "midpoints": [ 650.8461752533913, 1637.9816129803658, 862.784666955471, 1637.9816129803658 ],
                    "source": [ "obj-246", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-153", 0 ],
                    "source": [ "obj-247", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 0 ],
                    "source": [ "obj-249", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 0 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-300", 1 ],
                    "midpoints": [ 579.7702322006226, 2860.609499812126, 718.6486020088196, 2860.609499812126 ],
                    "source": [ "obj-250", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-491", 0 ],
                    "source": [ "obj-253", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-259", 0 ],
                    "midpoints": [ 389.2297043800354, 3032.1350359916687, 708.1486020088196, 3032.1350359916687 ],
                    "source": [ "obj-254", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-259", 0 ],
                    "midpoints": [ 497.3378052711487, 3032.1350359916687, 708.1486020088196, 3032.1350359916687 ],
                    "source": [ "obj-255", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-249", 0 ],
                    "midpoints": [ 1955.4853910207748, 2013.3201433657669, 2368.6434225423727, 2013.3201433657669, 2368.6434225423727, 1775.0090586543083, 2408.673420727253, 1775.0090586543083 ],
                    "source": [ "obj-256", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-256", 0 ],
                    "source": [ "obj-258", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-257", 0 ],
                    "source": [ "obj-259", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-64", 0 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-259", 0 ],
                    "midpoints": [ 708.1486020088196, 3032.1350359916687, 708.1486020088196, 3032.1350359916687 ],
                    "source": [ "obj-260", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-249", 0 ],
                    "midpoints": [ 2149.645973920822, 2013.5701181965414, 2368.945732315071, 2013.5701181965414, 2368.945732315071, 1775.0090586543083, 2408.673420727253, 1775.0090586543083 ],
                    "source": [ "obj-261", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-402", 0 ],
                    "source": [ "obj-262", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-259", 0 ],
                    "midpoints": [ 602.7432036399841, 3032.1350359916687, 708.1486020088196, 3032.1350359916687 ],
                    "source": [ "obj-263", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-259", 0 ],
                    "midpoints": [ 275.71619844436646, 3032.1350359916687, 708.1486020088196, 3032.1350359916687 ],
                    "source": [ "obj-264", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-259", 0 ],
                    "midpoints": [ 166.25674629211426, 3032.1350359916687, 708.1486020088196, 3032.1350359916687 ],
                    "source": [ "obj-266", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-265", 0 ],
                    "source": [ "obj-267", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-298", 0 ],
                    "midpoints": [ 580.3029166460037, 709.8132847845554, 407.3102168440819, 709.8132847845554 ],
                    "order": 2,
                    "source": [ "obj-269", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-302", 0 ],
                    "order": 0,
                    "source": [ "obj-269", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "midpoints": [ 580.3029166460037, 872.9054780602455, 482.49269819259644, 872.9054780602455 ],
                    "order": 1,
                    "source": [ "obj-269", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-27", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "midpoints": [ 289.7919692993164, 1188.6038682460785, 414.7919692993164, 1188.6038682460785 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-452", 0 ],
                    "source": [ "obj-270", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "midpoints": [ 189.7919698357582, 1047.9929296076298, 153.29561966657639, 1047.9929296076298 ],
                    "source": [ "obj-271", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-268", 0 ],
                    "midpoints": [ 986.5269618034363, 2797.8991882801056, 986.5269618034363, 2797.8991882801056 ],
                    "source": [ "obj-272", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-431", 0 ],
                    "source": [ "obj-273", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-494", 1 ],
                    "source": [ "obj-274", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-567", 0 ],
                    "source": [ "obj-274", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "source": [ "obj-275", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-282", 0 ],
                    "source": [ "obj-276", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-534", 0 ],
                    "source": [ "obj-277", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-249", 0 ],
                    "midpoints": [ 2251.1058273911476, 1766.5029455735348, 2408.673420727253, 1766.5029455735348 ],
                    "source": [ "obj-278", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "midpoints": [ 2529.9379426836967, 474.4243301153183, 2529.9379426836967, 474.4243301153183 ],
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-282", 1 ],
                    "midpoints": [ 7494.499286174774, 1181.6565451025963, 7450.163666188717, 1181.6565451025963, 7450.163666188717, 1047.8479513525963, 7405.499300003052, 1047.8479513525963 ],
                    "order": 1,
                    "source": [ "obj-280", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-348", 1 ],
                    "order": 0,
                    "source": [ "obj-280", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-575", 0 ],
                    "source": [ "obj-281", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-428", 1 ],
                    "midpoints": [ 7349.499300003052, 1099.784065131098, 6969.166023890178, 1099.784065131098 ],
                    "source": [ "obj-282", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-269", 0 ],
                    "source": [ "obj-284", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-294", 0 ],
                    "order": 0,
                    "source": [ "obj-285", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-298", 0 ],
                    "midpoints": [ 453.295618057251, 709.8132847845554, 407.3102168440819, 709.8132847845554 ],
                    "order": 1,
                    "source": [ "obj-285", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-258", 0 ],
                    "midpoints": [ 2100.952543616295, 1888.037185817957, 1955.4853910207748, 1888.037185817957 ],
                    "source": [ "obj-286", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-261", 0 ],
                    "midpoints": [ 2083.952543616295, 1915.3153617370408, 2149.645973920822, 1915.3153617370408 ],
                    "source": [ "obj-286", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-73", 0 ],
                    "source": [ "obj-287", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-291", 0 ],
                    "midpoints": [ 334.3324135780334, 2861.109499812126, 275.71619844436646, 2861.109499812126 ],
                    "source": [ "obj-288", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-292", 0 ],
                    "midpoints": [ 344.93241357803345, 2861.109499812126, 166.25674629211426, 2861.109499812126 ],
                    "source": [ "obj-288", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-293", 0 ],
                    "midpoints": [ 313.13241357803344, 2861.109499812126, 497.3378052711487, 2861.109499812126 ],
                    "source": [ "obj-288", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-296", 0 ],
                    "midpoints": [ 323.73241357803346, 2861.109499812126, 389.2297043800354, 2861.109499812126 ],
                    "source": [ "obj-288", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-299", 0 ],
                    "midpoints": [ 302.53241357803347, 2861.109499812126, 602.7432036399841, 2861.109499812126 ],
                    "source": [ "obj-288", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-300", 0 ],
                    "midpoints": [ 291.93241357803345, 2861.109499812126, 708.1486020088196, 2861.109499812126 ],
                    "source": [ "obj-288", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-423", 0 ],
                    "source": [ "obj-289", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-288", 0 ],
                    "source": [ "obj-290", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-264", 0 ],
                    "midpoints": [ 275.71619844436646, 2946.609499812126, 275.71619844436646, 2946.609499812126 ],
                    "source": [ "obj-291", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-266", 0 ],
                    "midpoints": [ 166.25674629211426, 2950.609499812126, 166.25674629211426, 2950.609499812126 ],
                    "source": [ "obj-292", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-255", 0 ],
                    "source": [ "obj-293", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-314", 0 ],
                    "midpoints": [ 453.295618057251, 774.3132847845554, 386.1423337459564, 774.3132847845554 ],
                    "source": [ "obj-294", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-258", 0 ],
                    "midpoints": [ 2160.145973920822, 1888.037185817957, 1955.4853910207748, 1888.037185817957 ],
                    "source": [ "obj-295", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-261", 0 ],
                    "source": [ "obj-295", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-254", 0 ],
                    "source": [ "obj-296", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-314", 2 ],
                    "source": [ "obj-298", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-263", 0 ],
                    "source": [ "obj-299", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-323", 0 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-260", 0 ],
                    "source": [ "obj-300", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "midpoints": [ 580.3029166460037, 1051.3971064388752, 153.29561966657639, 1051.3971064388752 ],
                    "source": [ "obj-302", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-312", 0 ],
                    "order": 1,
                    "source": [ "obj-307", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-314", 0 ],
                    "midpoints": [ 153.29561966657639, 720.087829933269, 386.1423337459564, 720.087829933269 ],
                    "order": 0,
                    "source": [ "obj-307", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-313", 1 ],
                    "order": 1,
                    "source": [ "obj-309", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-486", 0 ],
                    "order": 0,
                    "source": [ "obj-309", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-476", 0 ],
                    "source": [ "obj-310", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-459", 0 ],
                    "source": [ "obj-311", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-313", 0 ],
                    "source": [ "obj-312", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-313", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-309", 0 ],
                    "source": [ "obj-314", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 2 ],
                    "midpoints": [ 174.83333333333334, 534.9367280602455, 237.5, 534.9367280602455 ],
                    "source": [ "obj-315", 8 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-315", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 1 ],
                    "midpoints": [ 89.50000000000003, 544.0343843102455, 195.5, 544.0343843102455 ],
                    "source": [ "obj-315", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-458", 0 ],
                    "source": [ "obj-316", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-479", 0 ],
                    "source": [ "obj-317", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-457", 0 ],
                    "source": [ "obj-318", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "source": [ "obj-320", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-257", 0 ],
                    "midpoints": [ 646.1486020088196, 3133.3832241892815, 708.1486020088196, 3133.3832241892815 ],
                    "source": [ "obj-321", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-322", 0 ],
                    "source": [ "obj-323", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-148", 0 ],
                    "source": [ "obj-324", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-290", 0 ],
                    "source": [ "obj-324", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-321", 0 ],
                    "source": [ "obj-325", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 1 ],
                    "midpoints": [ 2623.785482108593, 2039.4126290928107, 2430.9979072213173, 2039.4126290928107 ],
                    "source": [ "obj-326", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-272", 0 ],
                    "source": [ "obj-327", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-93", 0 ],
                    "source": [ "obj-33", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-95", 0 ],
                    "midpoints": [ 1356.945248246193, 753.6072078943253, 1535.7773640751839, 753.6072078943253 ],
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-559", 0 ],
                    "midpoints": [ 4431.972263336182, 1029.2715114951134, 4431.61553221941, 1029.2715114951134 ],
                    "source": [ "obj-331", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-238", 0 ],
                    "midpoints": [ 3162.7130270004272, 1640.7885866761208, 2875.07368850708, 1640.7885866761208 ],
                    "source": [ "obj-332", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-340", 0 ],
                    "source": [ "obj-332", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-401", 0 ],
                    "source": [ "obj-333", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-295", 0 ],
                    "source": [ "obj-334", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-270", 0 ],
                    "source": [ "obj-335", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-415", 0 ],
                    "source": [ "obj-336", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-332", 0 ],
                    "source": [ "obj-337", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-558", 0 ],
                    "source": [ "obj-338", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-238", 1 ],
                    "midpoints": [ 3076.7130270004272, 1639.6919406056404, 2901.57368850708, 1639.6919406056404 ],
                    "source": [ "obj-340", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-252", 0 ],
                    "source": [ "obj-341", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-343", 0 ],
                    "midpoints": [ 7379.499297142029, 1349.261050015688, 7314.499303340912, 1349.261050015688 ],
                    "source": [ "obj-342", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-344", 0 ],
                    "source": [ "obj-342", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-350", 0 ],
                    "midpoints": [ 7314.499303340912, 1420.7009979784489, 7294.4993052482605, 1420.7009979784489 ],
                    "source": [ "obj-343", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-350", 0 ],
                    "midpoints": [ 7444.499290943146, 1421.5876279615331, 7294.4993052482605, 1421.5876279615331 ],
                    "source": [ "obj-344", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-346", 0 ],
                    "source": [ "obj-345", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-351", 0 ],
                    "source": [ "obj-346", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-342", 0 ],
                    "midpoints": [ 7431.540622591972, 1221.3782455325127, 7516.160200715065, 1221.3782455325127, 7516.160200715065, 1266.3782455325127, 7379.499297142029, 1266.3782455325127 ],
                    "source": [ "obj-347", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-348", 0 ],
                    "source": [ "obj-347", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-349", 0 ],
                    "source": [ "obj-348", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-350", 0 ],
                    "source": [ "obj-349", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-369", 0 ],
                    "source": [ "obj-352", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-419", 0 ],
                    "source": [ "obj-353", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-352", 0 ],
                    "midpoints": [ 7799.066268285115, 1031.6565451025963, 7630.684551517168, 1031.6565451025963, 7630.684551517168, 847.7229513525963, 7499.499285697937, 847.7229513525963 ],
                    "order": 0,
                    "source": [ "obj-354", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-352", 1 ],
                    "midpoints": [ 7779.2827645937605, 1031.6565451025963, 7629.731108171491, 1031.6565451025963, 7629.731108171491, 848.7776388525963, 7571.016527697937, 848.7776388525963 ],
                    "order": 0,
                    "source": [ "obj-354", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-352", 0 ],
                    "midpoints": [ 7759.499260902405, 1031.6565451025963, 7630.467454075813, 1031.6565451025963, 7630.467454075813, 849.3831076025963, 7499.499285697937, 849.3831076025963 ],
                    "order": 0,
                    "source": [ "obj-354", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-353", 0 ],
                    "midpoints": [ 7799.066268285115, 1031.6565451025963, 7631.469707767168, 1031.6565451025963, 7631.469707767168, 848.2542013525963, 7339.499300956726, 848.2542013525963 ],
                    "order": 1,
                    "source": [ "obj-354", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-353", 0 ],
                    "midpoints": [ 7779.2827645937605, 1031.6565451025963, 7630.320143421492, 1031.6565451025963, 7630.320143421492, 848.4065451025963, 7339.499300956726, 848.4065451025963 ],
                    "order": 1,
                    "source": [ "obj-354", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-353", 1 ],
                    "midpoints": [ 7759.499260902405, 1031.6565451025963, 7630.205735325813, 1031.6565451025963, 7630.205735325813, 848.2737326025963, 7417.499300956726, 848.2737326025963 ],
                    "order": 1,
                    "source": [ "obj-354", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-372", 0 ],
                    "midpoints": [ 7310.4993143081665, 817.37083786726, 7335.328154593706, 817.37083786726, 7335.328154593706, 459.5075794458389, 7144.499319553375, 459.5075794458389 ],
                    "source": [ "obj-357", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-374", 0 ],
                    "midpoints": [ 7199.4993143081665, 817.37083786726, 7335.21277526021, 817.37083786726, 7335.21277526021, 459.5075794458389, 7019.499331474304, 459.5075794458389 ],
                    "source": [ "obj-357", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-185", 0 ],
                    "midpoints": [ 7659.499270439148, 984.1565451025963, 7844.499252796173, 984.1565451025963 ],
                    "order": 1,
                    "source": [ "obj-358", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-354", 0 ],
                    "midpoints": [ 7659.499270439148, 986.2438114285469, 7759.499260902405, 986.2438114285469 ],
                    "order": 2,
                    "source": [ "obj-358", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-359", 0 ],
                    "order": 3,
                    "source": [ "obj-358", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-616", 1 ],
                    "midpoints": [ 7659.499270439148, 984.0823263525963, 7952.499243736267, 984.0823263525963 ],
                    "order": 0,
                    "source": [ "obj-358", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-428", 0 ],
                    "midpoints": [ 7659.499270439148, 1193.6401828131638, 6749.499357223511, 1193.6401828131638 ],
                    "source": [ "obj-359", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-427", 0 ],
                    "source": [ "obj-360", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-435", 0 ],
                    "midpoints": [ 7169.499317169189, 392.62845599651337, 6814.499351024628, 392.62845599651337 ],
                    "source": [ "obj-361", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-435", 0 ],
                    "midpoints": [ 6974.499335765839, 392.62845599651337, 6814.499351024628, 392.62845599651337 ],
                    "source": [ "obj-362", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-437", 0 ],
                    "midpoints": [ 6374.499392986298, 550.8787330985069, 6244.499405384064, 550.8787330985069 ],
                    "source": [ "obj-363", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-281", 0 ],
                    "source": [ "obj-364", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-488", 0 ],
                    "midpoints": [ 6714.2994621396065, 241.58945842506364, 6547.347660303116, 241.58945842506364, 6547.347660303116, 200.043843626976, 6464.499384403229, 200.043843626976 ],
                    "order": 2,
                    "source": [ "obj-364", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-565", 0 ],
                    "order": 1,
                    "source": [ "obj-364", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-626", 0 ],
                    "midpoints": [ 6714.2994621396065, 203.94911978929304, 6784.499353885651, 203.94911978929304 ],
                    "order": 0,
                    "source": [ "obj-364", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-436", 0 ],
                    "source": [ "obj-365", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-147", 0 ],
                    "source": [ "obj-369", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 0 ],
                    "source": [ "obj-37", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-434", 0 ],
                    "midpoints": [ 7199.4993143081665, 609.7108045220375, 6814.499351024628, 609.7108045220375 ],
                    "source": [ "obj-370", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-373", 0 ],
                    "source": [ "obj-372", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-434", 0 ],
                    "midpoints": [ 7144.499319553375, 609.8006493449211, 6814.499351024628, 609.8006493449211 ],
                    "source": [ "obj-373", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-375", 0 ],
                    "source": [ "obj-374", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-434", 0 ],
                    "midpoints": [ 7019.499331474304, 609.4881493449211, 6814.499351024628, 609.4881493449211 ],
                    "source": [ "obj-375", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-108", 0 ],
                    "midpoints": [ 6749.499357223511, 1478.543937087059, 6719.499360084534, 1478.543937087059 ],
                    "source": [ "obj-376", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-378", 0 ],
                    "midpoints": [ 6654.499366283417, 1370.217058122158, 6719.499360084534, 1370.217058122158 ],
                    "source": [ "obj-377", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-108", 0 ],
                    "source": [ "obj-378", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-376", 0 ],
                    "source": [ "obj-378", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "source": [ "obj-38", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "source": [ "obj-38", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-377", 0 ],
                    "source": [ "obj-380", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-378", 1 ],
                    "source": [ "obj-381", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-383", 0 ],
                    "source": [ "obj-382", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-384", 0 ],
                    "source": [ "obj-383", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-385", 0 ],
                    "source": [ "obj-384", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-417", 0 ],
                    "midpoints": [ 8479.499192237854, 550.692715132609, 8159.499222755432, 550.692715132609 ],
                    "source": [ "obj-385", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-388", 0 ],
                    "source": [ "obj-387", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-391", 0 ],
                    "source": [ "obj-388", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-387", 0 ],
                    "source": [ "obj-389", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 0 ],
                    "midpoints": [ 1856.945245563984, 928.2527308654971, 1732.127727985382, 928.2527308654971 ],
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-396", 0 ],
                    "source": [ "obj-390", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-392", 0 ],
                    "source": [ "obj-391", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-390", 1 ],
                    "source": [ "obj-392", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-399", 0 ],
                    "source": [ "obj-394", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-395", 1 ],
                    "order": 0,
                    "source": [ "obj-396", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-395", 0 ],
                    "order": 1,
                    "source": [ "obj-396", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-389", 0 ],
                    "midpoints": [ 6094.4994196891785, 1018.8126756846905, 6244.499405384064, 1018.8126756846905 ],
                    "order": 0,
                    "source": [ "obj-397", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-394", 0 ],
                    "order": 1,
                    "source": [ "obj-397", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-139", 1 ],
                    "midpoints": [ 6252.49941110611, 941.1447720527649, 6294.9994015693665, 941.1447720527649 ],
                    "order": 1,
                    "source": [ "obj-398", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-329", 0 ],
                    "midpoints": [ 6252.49941110611, 940.60241681966, 6309.499399185181, 940.60241681966 ],
                    "order": 0,
                    "source": [ "obj-398", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-397", 1 ],
                    "order": 2,
                    "source": [ "obj-398", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-390", 0 ],
                    "source": [ "obj-399", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 0 ],
                    "midpoints": [ 1513.1496269702911, 909.2095692753792, 1513.1496269702911, 909.2095692753792 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-56", 0 ],
                    "order": 1,
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-96", 0 ],
                    "midpoints": [ 1368.6240803003311, 1060.7828186224215, 1289.1488554468378, 1060.7828186224215, 1289.1488554468378, 657.163686347194, 1414.6094815135002, 657.163686347194 ],
                    "order": 0,
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-238", 2 ],
                    "midpoints": [ 3233.270399570465, 1618.1892550587654, 2928.07368850708, 1618.1892550587654 ],
                    "source": [ "obj-400", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-337", 0 ],
                    "source": [ "obj-401", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-400", 0 ],
                    "midpoints": [ 3088.2130270004272, 1470.1797629594803, 3233.270399570465, 1470.1797629594803 ],
                    "source": [ "obj-401", 1 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.0, 1.0, 0.2901960784313726, 1.0 ],
                    "destination": [ "obj-545", 0 ],
                    "midpoints": [ 3099.7130270004272, 1470.0, 3195.67578125, 1470.0, 3195.67578125, 1779.9606713277753, 2623.5, 1779.9606713277753 ],
                    "source": [ "obj-401", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-240", 0 ],
                    "source": [ "obj-402", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-400", 0 ],
                    "midpoints": [ 2912.803195953369, 1470.8145285844803, 3233.270399570465, 1470.8145285844803 ],
                    "source": [ "obj-402", 1 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.0, 1.0, 0.2901960784313726, 1.0 ],
                    "destination": [ "obj-545", 0 ],
                    "midpoints": [ 2924.303195953369, 1470.0, 3045.6015625, 1470.0, 3045.6015625, 1780.29296875, 2623.5, 1780.29296875 ],
                    "source": [ "obj-402", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-502", 0 ],
                    "source": [ "obj-403", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-341", 0 ],
                    "source": [ "obj-404", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-412", 0 ],
                    "source": [ "obj-405", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-404", 0 ],
                    "source": [ "obj-406", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-386", 0 ],
                    "midpoints": [ 8409.499198913574, 761.5792379379272, 8299.499209403992, 761.5792379379272 ],
                    "source": [ "obj-407", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-407", 0 ],
                    "source": [ "obj-408", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-408", 0 ],
                    "source": [ "obj-409", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-411", 0 ],
                    "source": [ "obj-409", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-57", 0 ],
                    "midpoints": [ 1380.6240803003311, 952.1809054017067, 1693.8745939747896, 952.1809054017067, 1693.8745939747896, 814.1024709939957, 1856.945245563984, 814.1024709939957 ],
                    "order": 1,
                    "source": [ "obj-41", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-78", 0 ],
                    "midpoints": [ 1380.6240803003311, 966.2841375065036, 2038.2795457816683, 966.2841375065036, 2038.2795457816683, 814.5416386127472, 2189.791959106922, 814.5416386127472 ],
                    "order": 0,
                    "source": [ "obj-41", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-386", 0 ],
                    "source": [ "obj-410", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-410", 0 ],
                    "source": [ "obj-411", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-413", 0 ],
                    "order": 0,
                    "source": [ "obj-412", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-597", 0 ],
                    "midpoints": [ 8344.499205112457, 486.78869992494583, 8229.499216079712, 486.78869992494583 ],
                    "order": 1,
                    "source": [ "obj-412", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-417", 0 ],
                    "midpoints": [ 8344.499205112457, 547.634830199182, 8159.499222755432, 547.634830199182 ],
                    "source": [ "obj-413", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-417", 0 ],
                    "midpoints": [ 8074.499230861664, 489.8883005976677, 8159.499222755432, 489.8883005976677 ],
                    "source": [ "obj-414", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-417", 0 ],
                    "source": [ "obj-415", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-409", 0 ],
                    "source": [ "obj-416", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-416", 0 ],
                    "source": [ "obj-417", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-151", 0 ],
                    "source": [ "obj-419", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-63", 0 ],
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-526", 0 ],
                    "source": [ "obj-420", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-603", 1 ],
                    "source": [ "obj-421", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-551", 0 ],
                    "source": [ "obj-422", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-421", 0 ],
                    "source": [ "obj-423", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-611", 0 ],
                    "source": [ "obj-424", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-428", 0 ],
                    "source": [ "obj-425", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-180", 1 ],
                    "order": 1,
                    "source": [ "obj-426", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-347", 0 ],
                    "midpoints": [ 7069.499326705933, 885.4456076025963, 7294.4993052482605, 885.4456076025963 ],
                    "order": 0,
                    "source": [ "obj-426", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-397", 0 ],
                    "midpoints": [ 7119.499326705933, 971.6691875942051, 6094.4994196891785, 971.6691875942051 ],
                    "source": [ "obj-426", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-434", 0 ],
                    "midpoints": [ 6694.4993624687195, 607.5676919827238, 6814.499351024628, 607.5676919827238 ],
                    "source": [ "obj-427", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-600", 0 ],
                    "source": [ "obj-428", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-435", 0 ],
                    "source": [ "obj-429", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 0 ],
                    "order": 0,
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-91", 0 ],
                    "midpoints": [ 1428.4780945777893, 1067.9160091148224, 1267.3460919456556, 1067.9160091148224, 1267.3460919456556, 657.0328894376289, 1356.945248246193, 657.0328894376289 ],
                    "order": 1,
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-435", 0 ],
                    "source": [ "obj-430", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-434", 0 ],
                    "source": [ "obj-431", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-434", 0 ],
                    "midpoints": [ 6209.499408721924, 816.1706635728478, 6791.481699323747, 816.1706635728478, 6791.481699323747, 608.1991329635493, 6814.499351024628, 608.1991329635493 ],
                    "source": [ "obj-433", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-357", 0 ],
                    "source": [ "obj-434", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-426", 0 ],
                    "source": [ "obj-434", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-431", 0 ],
                    "source": [ "obj-435", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-437", 0 ],
                    "source": [ "obj-436", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-398", 0 ],
                    "midpoints": [ 6357.499405384064, 594.8025816231966, 6184.49941110611, 594.8025816231966 ],
                    "order": 1,
                    "source": [ "obj-437", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-520", 0 ],
                    "order": 0,
                    "source": [ "obj-437", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "midpoints": [ 1589.791962325573, 966.475024163723, 1368.6240803003311, 966.475024163723 ],
                    "source": [ "obj-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-57", 0 ],
                    "midpoints": [ 1601.791962325573, 952.1809054017067, 1693.003985287156, 952.1809054017067, 1693.003985287156, 814.1024709939957, 1856.945245563984, 814.1024709939957 ],
                    "order": 1,
                    "source": [ "obj-44", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-78", 0 ],
                    "midpoints": [ 1601.791962325573, 965.6427446079906, 2039.299022451276, 965.6427446079906, 2039.299022451276, 814.5416386127472, 2189.791959106922, 814.5416386127472 ],
                    "order": 0,
                    "source": [ "obj-44", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-453", 0 ],
                    "source": [ "obj-442", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-454", 0 ],
                    "source": [ "obj-443", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-334", 0 ],
                    "midpoints": [ 1854.8125, 1787.3088207542896, 2149.645973920822, 1787.3088207542896 ],
                    "source": [ "obj-444", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-334", 0 ],
                    "midpoints": [ 1935.28125, 1786.7814770042896, 2149.645973920822, 1786.7814770042896 ],
                    "source": [ "obj-445", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-334", 0 ],
                    "midpoints": [ 2021.21875, 1786.8791332542896, 2149.645973920822, 1786.8791332542896 ],
                    "source": [ "obj-446", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-334", 0 ],
                    "midpoints": [ 2109.5, 1786.9221020042896, 2149.645973920822, 1786.9221020042896 ],
                    "source": [ "obj-447", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-403", 0 ],
                    "midpoints": [ 4040.5347098708153, 895.431256711483, 3966.9498007893562, 895.431256711483 ],
                    "source": [ "obj-448", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-501", 1 ],
                    "source": [ "obj-448", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-442", 0 ],
                    "source": [ "obj-449", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-443", 0 ],
                    "source": [ "obj-450", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-270", 0 ],
                    "source": [ "obj-451", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-455", 0 ],
                    "source": [ "obj-452", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-462", 0 ],
                    "source": [ "obj-453", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-472", 0 ],
                    "source": [ "obj-454", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-449", 0 ],
                    "midpoints": [ 2263.483542442322, 1643.4753637313843, 2765.0047113746405, 1643.4753637313843, 2765.0047113746405, 1484.26225233078, 2343.10649061203, 1484.26225233078 ],
                    "order": 3,
                    "source": [ "obj-455", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-450", 0 ],
                    "midpoints": [ 2263.483542442322, 1643.4753637313843, 2765.3633179217577, 1643.4753637313843, 2765.3633179217577, 1484.26225233078, 2478.352388381958, 1484.26225233078 ],
                    "order": 2,
                    "source": [ "obj-455", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-460", 0 ],
                    "source": [ "obj-455", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-484", 0 ],
                    "midpoints": [ 2263.483542442322, 1643.4753637313843, 2766.678712286055, 1643.4753637313843, 2766.678712286055, 1484.26225233078, 2601.303204536438, 1484.26225233078 ],
                    "order": 1,
                    "source": [ "obj-455", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-491", 0 ],
                    "midpoints": [ 2263.483542442322, 1643.4753637313843, 2850.8632510325406, 1643.4753637313843, 2850.8632510325406, 1441.6340327858925, 2678.7811300754547, 1441.6340327858925 ],
                    "order": 0,
                    "source": [ "obj-455", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-474", 0 ],
                    "source": [ "obj-456", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-471", 0 ],
                    "source": [ "obj-457", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-469", 0 ],
                    "source": [ "obj-458", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-468", 0 ],
                    "source": [ "obj-459", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-620", 0 ],
                    "source": [ "obj-46", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-278", 0 ],
                    "source": [ "obj-460", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-278", 0 ],
                    "midpoints": [ 2343.10649061203, 1696.8349927514791, 2251.1058273911476, 1696.8349927514791 ],
                    "source": [ "obj-461", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-450", 0 ],
                    "midpoints": [ 2356.10649061203, 1643.4753637313843, 2766.1920319721103, 1643.4753637313843, 2766.1920319721103, 1484.26225233078, 2478.352388381958, 1484.26225233078 ],
                    "order": 2,
                    "source": [ "obj-462", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-451", 0 ],
                    "midpoints": [ 2356.10649061203, 1643.4753637313843, 2212.4015963245183, 1643.4753637313843, 2212.4015963245183, 1480.983563899994, 2279.1720662117004, 1480.983563899994 ],
                    "order": 3,
                    "source": [ "obj-462", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-461", 0 ],
                    "source": [ "obj-462", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-484", 0 ],
                    "midpoints": [ 2356.10649061203, 1643.4753637313843, 2765.554864982143, 1643.4753637313843, 2765.554864982143, 1484.26225233078, 2601.303204536438, 1484.26225233078 ],
                    "order": 1,
                    "source": [ "obj-462", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-491", 0 ],
                    "midpoints": [ 2356.10649061203, 1643.4753637313843, 2849.7176157750655, 1643.4753637313843, 2849.7176157750655, 1441.6340327858925, 2678.7811300754547, 1441.6340327858925 ],
                    "order": 0,
                    "source": [ "obj-462", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-318", 0 ],
                    "source": [ "obj-463", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-317", 0 ],
                    "source": [ "obj-464", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-316", 0 ],
                    "source": [ "obj-465", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-311", 0 ],
                    "source": [ "obj-466", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-310", 0 ],
                    "source": [ "obj-467", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-444", 0 ],
                    "source": [ "obj-468", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-463", 0 ],
                    "midpoints": [ 1867.8125, 1686.0145896673203, 1988.265625, 1686.0145896673203, 1988.265625, 1526.8270896673203, 2108.71875, 1526.8270896673203 ],
                    "order": 0,
                    "source": [ "obj-468", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-464", 0 ],
                    "midpoints": [ 1867.8125, 1686.0145896673203, 2196.755615234375, 1686.0145896673203, 2196.755615234375, 1526.8270896673203, 2019.65625, 1526.8270896673203 ],
                    "order": 1,
                    "source": [ "obj-468", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-465", 0 ],
                    "midpoints": [ 1867.8125, 1686.0145896673203, 1707.5008544921875, 1686.0145896673203, 1707.5008544921875, 1526.8270896673203, 1933.71875, 1526.8270896673203 ],
                    "order": 2,
                    "source": [ "obj-468", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-467", 0 ],
                    "midpoints": [ 1867.8125, 1686.0145896673203, 1709.4400129318237, 1686.0145896673203, 1709.4400129318237, 1525.234553694725, 1760.28125, 1525.234553694725 ],
                    "order": 3,
                    "source": [ "obj-468", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-445", 0 ],
                    "source": [ "obj-469", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-463", 0 ],
                    "midpoints": [ 1948.28125, 1686.0145896673203, 2196.583028793335, 1686.0145896673203, 2196.583028793335, 1530.1125326156616, 2108.71875, 1530.1125326156616 ],
                    "order": 0,
                    "source": [ "obj-469", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-464", 0 ],
                    "midpoints": [ 1948.28125, 1686.0145896673203, 2197.4896450042725, 1686.0145896673203, 2197.4896450042725, 1526.3649740219116, 2019.65625, 1526.3649740219116 ],
                    "order": 1,
                    "source": [ "obj-469", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-466", 0 ],
                    "midpoints": [ 1948.28125, 1686.0145896673203, 1709.5272216796875, 1686.0145896673203, 1709.5272216796875, 1526.8270896673203, 1853.25, 1526.8270896673203 ],
                    "order": 2,
                    "source": [ "obj-469", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-467", 0 ],
                    "midpoints": [ 1948.28125, 1686.0145896673203, 1710.9048566818237, 1686.0145896673203, 1710.9048566818237, 1523.8337968587875, 1760.28125, 1523.8337968587875 ],
                    "order": 3,
                    "source": [ "obj-469", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "midpoints": [ 1513.1496269702911, 966.475024163723, 1368.6240803003311, 966.475024163723 ],
                    "source": [ "obj-47", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-57", 0 ],
                    "midpoints": [ 1525.1496269702911, 952.1809054017067, 1692.3554967045784, 952.1809054017067, 1692.3554967045784, 814.1024709939957, 1856.945245563984, 814.1024709939957 ],
                    "order": 1,
                    "source": [ "obj-47", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-78", 0 ],
                    "midpoints": [ 1525.1496269702911, 966.4603527807631, 2039.8557948265225, 966.4603527807631, 2039.8557948265225, 814.5416386127472, 2189.791959106922, 814.5416386127472 ],
                    "order": 0,
                    "source": [ "obj-47", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-446", 0 ],
                    "source": [ "obj-470", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-463", 0 ],
                    "midpoints": [ 2034.21875, 1686.0145896673203, 2195.86891746521, 1686.0145896673203, 2195.86891746521, 1526.6884603500366, 2108.71875, 1526.6884603500366 ],
                    "order": 0,
                    "source": [ "obj-470", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-465", 0 ],
                    "midpoints": [ 2034.21875, 1686.0145896673203, 1983.96875, 1686.0145896673203, 1983.96875, 1526.8270896673203, 1933.71875, 1526.8270896673203 ],
                    "order": 1,
                    "source": [ "obj-470", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-466", 0 ],
                    "midpoints": [ 2034.21875, 1686.0145896673203, 2195.8583984375, 1686.0145896673203, 2195.8583984375, 1526.8270896673203, 1853.25, 1526.8270896673203 ],
                    "order": 2,
                    "source": [ "obj-470", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-467", 0 ],
                    "midpoints": [ 2034.21875, 1686.0145896673203, 1710.3219709396362, 1686.0145896673203, 1710.3219709396362, 1525.9150956869125, 1760.28125, 1525.9150956869125 ],
                    "order": 3,
                    "source": [ "obj-470", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-447", 0 ],
                    "source": [ "obj-471", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-464", 0 ],
                    "midpoints": [ 2122.5, 1686.0145896673203, 2196.320821762085, 1686.0145896673203, 2196.320821762085, 1527.9824056625366, 2019.65625, 1527.9824056625366 ],
                    "order": 0,
                    "source": [ "obj-471", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-465", 0 ],
                    "midpoints": [ 2122.5, 1686.0145896673203, 2195.69215965271, 1686.0145896673203, 2195.69215965271, 1526.7678060531616, 1933.71875, 1526.7678060531616 ],
                    "order": 1,
                    "source": [ "obj-471", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-466", 0 ],
                    "midpoints": [ 2122.5, 1686.0145896673203, 1987.875, 1686.0145896673203, 1987.875, 1526.8270896673203, 1853.25, 1526.8270896673203 ],
                    "order": 2,
                    "source": [ "obj-471", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-467", 0 ],
                    "midpoints": [ 2122.5, 1686.0145896673203, 1710.2517805099487, 1686.0145896673203, 1710.2517805099487, 1525.1643632650375, 1760.28125, 1525.1643632650375 ],
                    "order": 3,
                    "source": [ "obj-471", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-449", 0 ],
                    "midpoints": [ 2491.352388381958, 1643.4753637313843, 2764.802431602031, 1643.4753637313843, 2764.802431602031, 1484.26225233078, 2343.10649061203, 1484.26225233078 ],
                    "order": 2,
                    "source": [ "obj-472", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-451", 0 ],
                    "midpoints": [ 2491.352388381958, 1643.4753637313843, 2210.966638021171, 1643.4753637313843, 2210.966638021171, 1480.983563899994, 2279.1720662117004, 1480.983563899994 ],
                    "order": 3,
                    "source": [ "obj-472", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-475", 0 ],
                    "source": [ "obj-472", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-484", 0 ],
                    "midpoints": [ 2491.352388381958, 1643.4753637313843, 2763.6497677005827, 1643.4753637313843, 2763.6497677005827, 1484.26225233078, 2601.303204536438, 1484.26225233078 ],
                    "order": 1,
                    "source": [ "obj-472", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-491", 0 ],
                    "midpoints": [ 2491.352388381958, 1643.4753637313843, 2849.767543734517, 1643.4753637313843, 2849.767543734517, 1441.6340327858925, 2678.7811300754547, 1441.6340327858925 ],
                    "order": 0,
                    "source": [ "obj-472", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-286", 0 ],
                    "midpoints": [ 1761.0625, 1827.546371232951, 2083.952543616295, 1827.546371232951 ],
                    "source": [ "obj-473", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-463", 0 ],
                    "midpoints": [ 1774.0625, 1686.0145896673203, 2197.6431691348553, 1686.0145896673203, 2197.6431691348553, 1527.3384847640991, 2108.71875, 1527.3384847640991 ],
                    "order": 0,
                    "source": [ "obj-473", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-464", 0 ],
                    "midpoints": [ 1774.0625, 1686.0145896673203, 2198.0187794864178, 1686.0145896673203, 2198.0187794864178, 1526.4778890609741, 2019.65625, 1526.4778890609741 ],
                    "order": 1,
                    "source": [ "obj-473", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-465", 0 ],
                    "midpoints": [ 1774.0625, 1686.0145896673203, 2197.2772023379803, 1686.0145896673203, 2197.2772023379803, 1526.6457357406616, 1933.71875, 1526.6457357406616 ],
                    "order": 2,
                    "source": [ "obj-473", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-466", 0 ],
                    "midpoints": [ 1774.0625, 1686.0145896673203, 2198.7267872989178, 1686.0145896673203, 2198.7267872989178, 1525.8065023422241, 1853.25, 1525.8065023422241 ],
                    "order": 3,
                    "source": [ "obj-473", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-274", 0 ],
                    "source": [ "obj-474", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-278", 0 ],
                    "midpoints": [ 2478.352388381958, 1696.8820545747876, 2251.1058273911476, 1696.8820545747876 ],
                    "source": [ "obj-475", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-473", 0 ],
                    "source": [ "obj-476", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-274", 0 ],
                    "source": [ "obj-477", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-449", 0 ],
                    "midpoints": [ 2614.303204536438, 1643.4753637313843, 2764.8280463553965, 1643.4753637313843, 2764.8280463553965, 1484.26225233078, 2343.10649061203, 1484.26225233078 ],
                    "order": 2,
                    "source": [ "obj-478", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-450", 0 ],
                    "midpoints": [ 2614.303204536438, 1643.4753637313843, 2765.666929528117, 1643.4753637313843, 2765.666929528117, 1484.26225233078, 2478.352388381958, 1484.26225233078 ],
                    "order": 1,
                    "source": [ "obj-478", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-451", 0 ],
                    "midpoints": [ 2614.303204536438, 1643.4753637313843, 2210.8577753193676, 1643.4753637313843, 2210.8577753193676, 1480.983563899994, 2279.1720662117004, 1480.983563899994 ],
                    "order": 3,
                    "source": [ "obj-478", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-487", 0 ],
                    "source": [ "obj-478", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-493", 0 ],
                    "midpoints": [ 2614.303204536438, 1643.4753637313843, 2852.3192364939023, 1643.4753637313843, 2852.3192364939023, 1398.496776521206, 2692.7811300754547, 1398.496776521206 ],
                    "order": 0,
                    "source": [ "obj-478", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-470", 0 ],
                    "source": [ "obj-479", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-79", 0 ],
                    "source": [ "obj-48", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-310", 0 ],
                    "midpoints": [ 1677.46875, 1569.2908641695976, 1760.28125, 1569.2908641695976 ],
                    "source": [ "obj-480", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-478", 0 ],
                    "source": [ "obj-481", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "midpoints": [ 418.98904889822006, 968.4890233576298 ],
                    "source": [ "obj-482", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-485", 0 ],
                    "source": [ "obj-484", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-481", 0 ],
                    "source": [ "obj-485", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "midpoints": [ 418.98904889822006, 918.6140233576298, 482.49269819259644, 918.6140233576298 ],
                    "order": 0,
                    "source": [ "obj-486", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-482", 0 ],
                    "order": 1,
                    "source": [ "obj-486", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-278", 0 ],
                    "midpoints": [ 2601.303204536438, 1697.0400241622701, 2251.1058273911476, 1697.0400241622701 ],
                    "source": [ "obj-487", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-456", 0 ],
                    "source": [ "obj-488", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-477", 0 ],
                    "order": 0,
                    "source": [ "obj-488", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-539", 0 ],
                    "midpoints": [ 6464.499384403229, 245.60045316815376, 6204.499409198761, 245.60045316815376 ],
                    "order": 1,
                    "source": [ "obj-488", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-487", 0 ],
                    "midpoints": [ 2639.0373657643795, 1644.0744921974838, 2601.303204536438, 1644.0744921974838 ],
                    "source": [ "obj-489", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-489", 0 ],
                    "midpoints": [ 2678.7811300754547, 1483.28982952144, 2639.0373657643795, 1483.28982952144 ],
                    "source": [ "obj-491", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-486", 1 ],
                    "source": [ "obj-492", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-489", 0 ],
                    "midpoints": [ 2692.7811300754547, 1478.5206300243735, 2639.0373657643795, 1478.5206300243735 ],
                    "source": [ "obj-493", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-363", 0 ],
                    "midpoints": [ 6464.499392986298, 481.54775040084496, 6374.499392986298, 481.54775040084496 ],
                    "order": 1,
                    "source": [ "obj-494", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-363", 0 ],
                    "source": [ "obj-494", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-490", 0 ],
                    "order": 0,
                    "source": [ "obj-494", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-496", 0 ],
                    "source": [ "obj-495", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-494", 0 ],
                    "source": [ "obj-496", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-515", 0 ],
                    "source": [ "obj-497", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-68", 0 ],
                    "midpoints": [ 4234.730908672015, 1453.7418929338455, 3957.97012090683, 1453.7418929338455 ],
                    "source": [ "obj-498", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-403", 2 ],
                    "source": [ "obj-499", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-51", 0 ],
                    "source": [ "obj-50", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-279", 0 ],
                    "source": [ "obj-500", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-634", 1 ],
                    "source": [ "obj-501", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-501", 0 ],
                    "source": [ "obj-502", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-230", 1 ],
                    "midpoints": [ 4083.095455288887, 1312.769273519516, 4119.336258202791, 1312.769273519516, 4119.336258202791, 1270.769273519516, 4155.577061116695, 1270.769273519516 ],
                    "order": 0,
                    "source": [ "obj-503", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-546", 0 ],
                    "order": 1,
                    "source": [ "obj-503", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-507", 0 ],
                    "source": [ "obj-505", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-516", 0 ],
                    "source": [ "obj-505", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-505", 2 ],
                    "midpoints": [ 9101.499141693115, 978.3018354773521, 9213.209946870804, 978.3018354773521, 9213.209946870804, 855.1729292273521, 9101.499141693115, 855.1729292273521 ],
                    "source": [ "obj-506", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-506", 0 ],
                    "source": [ "obj-507", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-522", 0 ],
                    "source": [ "obj-509", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 0 ],
                    "source": [ "obj-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-511", 0 ],
                    "source": [ "obj-510", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-513", 0 ],
                    "source": [ "obj-511", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-513", 0 ],
                    "source": [ "obj-512", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-528", 0 ],
                    "source": [ "obj-513", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-529", 0 ],
                    "source": [ "obj-513", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-510", 0 ],
                    "source": [ "obj-514", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-512", 0 ],
                    "source": [ "obj-514", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-331", 0 ],
                    "source": [ "obj-515", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-557", 0 ],
                    "source": [ "obj-516", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-606", 0 ],
                    "midpoints": [ 9071.499141693115, 997.043843626976, 9273.085481643677, 997.043843626976, 9273.085481643677, 747.043843626976, 9359.499108314514, 747.043843626976 ],
                    "source": [ "obj-516", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-519", 1 ],
                    "source": [ "obj-517", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-519", 0 ],
                    "source": [ "obj-517", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-281", 0 ],
                    "midpoints": [ 5984.99943113327, 267.23739361763, 6182.871522202855, 267.23739361763, 6182.871522202855, 180.9032184900716, 6579.499373435974, 180.9032184900716 ],
                    "source": [ "obj-518", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-540", 1 ],
                    "midpoints": [ 5974.49943113327, 284.8363086283207, 6248.499409198761, 284.8363086283207 ],
                    "order": 0,
                    "source": [ "obj-518", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-569", 0 ],
                    "order": 1,
                    "source": [ "obj-518", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-521", 0 ],
                    "midpoints": [ 9420.463498234749, 874.5559212565422, 9309.499113082886, 874.5559212565422 ],
                    "source": [ "obj-519", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-525", 0 ],
                    "source": [ "obj-519", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-553", 0 ],
                    "source": [ "obj-519", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-570", 1 ],
                    "source": [ "obj-520", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-557", 1 ],
                    "midpoints": [ 9309.499113082886, 1042.2201986080036, 9039.999141693115, 1042.2201986080036 ],
                    "source": [ "obj-521", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-580", 1 ],
                    "source": [ "obj-522", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-628", 0 ],
                    "source": [ "obj-524", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-556", 1 ],
                    "source": [ "obj-525", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-527", 0 ],
                    "source": [ "obj-526", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-582", 1 ],
                    "source": [ "obj-526", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-548", 0 ],
                    "source": [ "obj-528", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-528", 0 ],
                    "midpoints": [ 5994.499429225922, 629.8129851405974, 5879.499440193176, 629.8129851405974 ],
                    "source": [ "obj-529", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 0 ],
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-127", 0 ],
                    "midpoints": [ 3582.141675531864, 1207.6001518985722, 3716.1039459109306, 1207.6001518985722 ],
                    "source": [ "obj-530", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-129", 0 ],
                    "source": [ "obj-530", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-155", 0 ],
                    "midpoints": [ 3623.6511114239693, 1190.8560328483582, 3795.366330587771, 1190.8560328483582, 3795.366330587771, 509.3823547363281, 3914.50011742115, 509.3823547363281 ],
                    "order": 1,
                    "source": [ "obj-530", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-533", 0 ],
                    "midpoints": [ 3561.3869575858116, 1189.3333678245544, 3857.5416000026744, 1189.3333678245544, 3857.5416000026744, 442.6952757551335, 3998.2549039125443, 442.6952757551335 ],
                    "source": [ "obj-530", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-632", 0 ],
                    "midpoints": [ 3623.6511114239693, 1189.3333678245544, 3795.7331581376493, 1189.3333678245544, 3795.7331581376493, 509.38734513521194, 4222.983482599258, 509.38734513521194 ],
                    "order": 0,
                    "source": [ "obj-530", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-144", 0 ],
                    "midpoints": [ 3998.2549039125443, 551.8767409026623, 3914.50011742115, 551.8767409026623 ],
                    "source": [ "obj-531", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-157", 0 ],
                    "midpoints": [ 816.5, 417.90408086776733, 90.49269926548004, 417.90408086776733 ],
                    "source": [ "obj-532", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-499", 0 ],
                    "midpoints": [ 4078.3115122914314, 630.0, 4152.0, 630.0, 4152.0, 846.0, 3989.591311275959, 846.0 ],
                    "source": [ "obj-533", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-531", 0 ],
                    "source": [ "obj-533", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-211", 0 ],
                    "source": [ "obj-534", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-503", 0 ],
                    "source": [ "obj-535", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-157", 0 ],
                    "source": [ "obj-536", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-279", 0 ],
                    "midpoints": [ 158.29561966657639, 369.64453125, 635.5, 369.64453125 ],
                    "source": [ "obj-536", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-538", 0 ],
                    "source": [ "obj-537", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-267", 0 ],
                    "midpoints": [ 829.5, 335.1484375, 1005.1204326152802, 335.1484375 ],
                    "source": [ "obj-538", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-532", 0 ],
                    "source": [ "obj-538", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-540", 0 ],
                    "source": [ "obj-539", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-541", 0 ],
                    "source": [ "obj-540", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-544", 0 ],
                    "source": [ "obj-541", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-545", 1 ],
                    "source": [ "obj-543", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-542", 0 ],
                    "source": [ "obj-544", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-224", 0 ],
                    "source": [ "obj-545", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-227", 0 ],
                    "source": [ "obj-546", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-498", 0 ],
                    "source": [ "obj-546", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-642", 0 ],
                    "source": [ "obj-546", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-69", 0 ],
                    "source": [ "obj-546", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-621", 0 ],
                    "source": [ "obj-547", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-134", 0 ],
                    "source": [ "obj-548", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "midpoints": [ 1443.8065616488457, 966.475024163723, 1368.6240803003311, 966.475024163723 ],
                    "source": [ "obj-55", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-57", 0 ],
                    "midpoints": [ 1455.8065616488457, 952.1809054017067, 1692.9503700893838, 952.1809054017067, 1692.9503700893838, 814.1024709939957, 1856.945245563984, 814.1024709939957 ],
                    "order": 1,
                    "source": [ "obj-55", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-78", 0 ],
                    "midpoints": [ 1455.8065616488457, 967.0768725480884, 2040.164523347281, 967.0768725480884, 2040.164523347281, 814.5416386127472, 2189.791959106922, 814.5416386127472 ],
                    "order": 0,
                    "source": [ "obj-55", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-571", 0 ],
                    "source": [ "obj-550", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-564", 0 ],
                    "source": [ "obj-551", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-556", 0 ],
                    "source": [ "obj-553", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-505", 0 ],
                    "source": [ "obj-554", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-521", 1 ],
                    "source": [ "obj-555", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-555", 0 ],
                    "source": [ "obj-556", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-422", 0 ],
                    "source": [ "obj-557", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-554", 0 ],
                    "source": [ "obj-558", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-230", 0 ],
                    "midpoints": [ 4488.179637094338, 1266.6324104408268, 4145.077061116695, 1266.6324104408268 ],
                    "order": 0,
                    "source": [ "obj-559", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-524", 0 ],
                    "source": [ "obj-559", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-622", 0 ],
                    "source": [ "obj-559", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-629", 0 ],
                    "midpoints": [ 4459.897584656875, 1080.802332162857, 4409.215063484851, 1080.802332162857, 4409.215063484851, 467.81430810689926, 4306.129556655884, 467.81430810689926 ],
                    "source": [ "obj-559", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-634", 0 ],
                    "midpoints": [ 4488.179637094338, 1080.802332162857, 4273.5452843904495, 1080.802332162857, 4273.5452843904495, 1012.9065072615631, 3934.8931970596313, 1012.9065072615631 ],
                    "order": 1,
                    "source": [ "obj-559", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "midpoints": [ 1368.6240803003311, 1114.5883637990337, 1266.851876495406, 1114.5883637990337, 1266.851876495406, 655.7146907448769, 1118.9890451431274, 655.7146907448769 ],
                    "source": [ "obj-56", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-552", 0 ],
                    "midpoints": [ 7469.49928855896, 1714.8272732123733, 7059.499327659607, 1714.8272732123733 ],
                    "source": [ "obj-560", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-338", 0 ],
                    "source": [ "obj-561", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-560", 0 ],
                    "source": [ "obj-562", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-518", 0 ],
                    "source": [ "obj-563", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-509", 0 ],
                    "midpoints": [ 9159.499127388, 412.5983142256737, 9159.499127388, 412.5983142256737 ],
                    "source": [ "obj-566", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-509", 1 ],
                    "source": [ "obj-568", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-39", 0 ],
                    "source": [ "obj-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-165", 0 ],
                    "midpoints": [ 6214.499408245087, 761.2510714065284, 6404.499390125275, 761.2510714065284 ],
                    "order": 0,
                    "source": [ "obj-570", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-433", 0 ],
                    "order": 1,
                    "source": [ "obj-570", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-552", 0 ],
                    "source": [ "obj-571", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-602", 0 ],
                    "source": [ "obj-572", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-514", 0 ],
                    "source": [ "obj-574", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-274", 1 ],
                    "source": [ "obj-575", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-513", 1 ],
                    "midpoints": [ 6629.730146050453, 328.681407677941, 5998.133854866028, 328.681407677941 ],
                    "source": [ "obj-575", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-563", 0 ],
                    "source": [ "obj-576", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "midpoints": [ 1428.4780945777893, 1114.9509046601597, 1265.8378565330058, 1114.9509046601597, 1265.8378565330058, 655.7146907448769, 1118.9890451431274, 655.7146907448769 ],
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-561", 0 ],
                    "source": [ "obj-580", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-583", 0 ],
                    "source": [ "obj-581", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-425", 0 ],
                    "source": [ "obj-582", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-584", 0 ],
                    "source": [ "obj-582", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-582", 0 ],
                    "source": [ "obj-583", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-580", 0 ],
                    "source": [ "obj-585", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-558", 1 ],
                    "midpoints": [ 9144.499128818512, 712.98616284132, 9231.359367370605, 712.98616284132 ],
                    "source": [ "obj-587", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-592", 0 ],
                    "source": [ "obj-588", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-591", 0 ],
                    "source": [ "obj-589", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-320", 0 ],
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-560", 0 ],
                    "midpoints": [ 7544.499281406403, 1596.9227250218391, 7469.49928855896, 1596.9227250218391 ],
                    "source": [ "obj-590", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-358", 0 ],
                    "source": [ "obj-591", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-589", 0 ],
                    "source": [ "obj-592", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-595", 0 ],
                    "source": [ "obj-592", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-124", 0 ],
                    "source": [ "obj-593", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-289", 0 ],
                    "source": [ "obj-593", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-603", 0 ],
                    "midpoints": [ 7074.999331951141, 1317.2984660863876, 6989.499334335327, 1317.2984660863876 ],
                    "source": [ "obj-593", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-593", 1 ],
                    "source": [ "obj-594", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-358", 0 ],
                    "midpoints": [ 7704.4992661476135, 933.4836992232595, 7659.499270439148, 933.4836992232595 ],
                    "source": [ "obj-595", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-215", 0 ],
                    "source": [ "obj-598", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-157", 1 ],
                    "midpoints": [ 490.5, 418.3997468948364, 186.49269926548004, 418.3997468948364 ],
                    "source": [ "obj-599", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-157", 2 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "midpoints": [ 1118.9890451431274, 804.31935313344, 1005.1204326152802, 804.31935313344 ],
                    "source": [ "obj-60", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-381", 0 ],
                    "source": [ "obj-600", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-601", 0 ],
                    "midpoints": [ 6759.999357223511, 1299.043843626976, 6996.867191553116, 1299.043843626976, 6996.867191553116, 1186.043843626976, 7014.499331951141, 1186.043843626976 ],
                    "source": [ "obj-600", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-593", 0 ],
                    "source": [ "obj-601", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-594", 0 ],
                    "source": [ "obj-601", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-570", 0 ],
                    "source": [ "obj-602", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-424", 1 ],
                    "midpoints": [ 6989.499334335327, 1544.471189957112, 6749.999360084534, 1544.471189957112 ],
                    "source": [ "obj-603", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-434", 0 ],
                    "midpoints": [ 7254.499309062958, 608.7623021882027, 6814.499351024628, 608.7623021882027 ],
                    "source": [ "obj-604", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-613", 0 ],
                    "source": [ "obj-605", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-517", 0 ],
                    "source": [ "obj-606", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-437", 0 ],
                    "midpoints": [ 6154.499413967133, 551.043843626976, 6244.499405384064, 551.043843626976 ],
                    "source": [ "obj-608", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-608", 0 ],
                    "source": [ "obj-609", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-112", 0 ],
                    "midpoints": [ 253.29561913013458, 1892.7545937895775, 205.12043690681458, 1892.7545937895775 ],
                    "order": 1,
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-113", 0 ],
                    "source": [ "obj-61", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-161", 0 ],
                    "midpoints": [ 253.29561913013458, 1819.11217841506, 205.12043690681458, 1819.11217841506 ],
                    "order": 0,
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-607", 0 ],
                    "source": [ "obj-610", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-610", 0 ],
                    "source": [ "obj-611", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-604", 0 ],
                    "source": [ "obj-612", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-399", 0 ],
                    "midpoints": [ 5919.499436378479, 1072.722928128671, 6094.4994196891785, 1072.722928128671 ],
                    "source": [ "obj-613", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-616", 0 ],
                    "order": 1,
                    "source": [ "obj-614", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-619", 0 ],
                    "midpoints": [ 7939.499243736267, 966.2818573426921, 8069.499231338501, 966.2818573426921 ],
                    "order": 0,
                    "source": [ "obj-614", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-614", 0 ],
                    "source": [ "obj-615", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-245", 0 ],
                    "source": [ "obj-616", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-617", 0 ],
                    "source": [ "obj-618", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-245", 1 ],
                    "source": [ "obj-619", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-130", 0 ],
                    "source": [ "obj-62", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-618", 0 ],
                    "source": [ "obj-620", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-571", 0 ],
                    "midpoints": [ 7219.499312400818, 1651.7360667586327, 7059.499327659607, 1651.7360667586327 ],
                    "source": [ "obj-621", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-636", 0 ],
                    "midpoints": [ 4431.972263336182, 1139.3337985873222, 4083.095455288887, 1139.3337985873222 ],
                    "source": [ "obj-622", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-344", 0 ],
                    "source": [ "obj-623", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-624", 0 ],
                    "source": [ "obj-626", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-497", 0 ],
                    "source": [ "obj-627", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-499", 0 ],
                    "midpoints": [ 4386.186165034771, 845.1412640805356, 3989.591311275959, 845.1412640805356 ],
                    "source": [ "obj-629", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-630", 0 ],
                    "source": [ "obj-629", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-65", 0 ],
                    "source": [ "obj-63", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-633", 0 ],
                    "midpoints": [ 4306.129556655884, 551.8767409026623, 4222.983482599258, 551.8767409026623 ],
                    "source": [ "obj-630", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-633", 0 ],
                    "source": [ "obj-632", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-189", 0 ],
                    "midpoints": [ 4254.316815932591, 596.1966416239738, 3949.50011742115, 596.1966416239738 ],
                    "source": [ "obj-633", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-277", 0 ],
                    "source": [ "obj-634", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-636", 0 ],
                    "midpoints": [ 3967.8931970596313, 1109.2201597793028, 4083.095455288887, 1109.2201597793028 ],
                    "source": [ "obj-634", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-177", 0 ],
                    "source": [ "obj-635", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-634", 0 ],
                    "midpoints": [ 4260.500195264816, 1013.8090688586235, 3934.8931970596313, 1013.8090688586235 ],
                    "source": [ "obj-635", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-534", 0 ],
                    "midpoints": [ 4083.095455288887, 1216.056276023388, 3934.8931970596313, 1216.056276023388 ],
                    "source": [ "obj-636", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-639", 0 ],
                    "source": [ "obj-638", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-277", 0 ],
                    "midpoints": [ 4083.095455288887, 1134.848453743849, 3934.8931970596313, 1134.848453743849 ],
                    "order": 1,
                    "source": [ "obj-639", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-636", 0 ],
                    "order": 0,
                    "source": [ "obj-639", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "source": [ "obj-64", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-45", 0 ],
                    "source": [ "obj-64", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-641", 0 ],
                    "source": [ "obj-640", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-628", 0 ],
                    "midpoints": [ 4772.000158965588, 1130.3450338244438, 4516.241932988167, 1130.3450338244438 ],
                    "source": [ "obj-641", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-68", 0 ],
                    "midpoints": [ 4537.115530967712, 1493.9046123027802, 3957.97012090683, 1493.9046123027802 ],
                    "source": [ "obj-642", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 1 ],
                    "order": 0,
                    "source": [ "obj-65", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 0 ],
                    "order": 1,
                    "source": [ "obj-65", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-133", 0 ],
                    "source": [ "obj-67", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-205", 1 ],
                    "source": [ "obj-68", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-68", 0 ],
                    "midpoints": [ 4083.095455288887, 1453.7418929338455, 3957.97012090683, 1453.7418929338455 ],
                    "source": [ "obj-69", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "midpoints": [ 823.9598497152328, 741.5314029157162, 1005.1204326152802, 741.5314029157162 ],
                    "source": [ "obj-7", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-83", 0 ],
                    "midpoints": [ 810.9598497152328, 743.1397556527518, 810.9598497152328, 743.1397556527518 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-164", 0 ],
                    "source": [ "obj-70", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-111", 0 ],
                    "source": [ "obj-71", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-267", 0 ],
                    "source": [ "obj-72", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-70", 0 ],
                    "source": [ "obj-73", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-733", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-448", 0 ],
                    "midpoints": [ 4040.166786789894, 844.0189066529274, 4040.5347098708153, 844.0189066529274 ],
                    "source": [ "obj-74", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-87", 0 ],
                    "source": [ "obj-76", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-70", 1 ],
                    "source": [ "obj-77", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-82", 0 ],
                    "source": [ "obj-78", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-88", 0 ],
                    "source": [ "obj-79", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "midpoints": [ 1589.791962325573, 909.2095692753792, 1589.791962325573, 909.2095692753792 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "source": [ "obj-80", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-104", 0 ],
                    "midpoints": [ 2189.791959106922, 928.2527308654971, 2062.7846605181694, 928.2527308654971 ],
                    "source": [ "obj-82", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-643", 0 ],
                    "source": [ "obj-83", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 1535.7773640751839, 864.5142366290092, 1443.8065616488457, 864.5142366290092 ],
                    "order": 2,
                    "source": [ "obj-84", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "midpoints": [ 1535.7773640751839, 864.5142366290092, 1513.1496269702911, 864.5142366290092 ],
                    "order": 1,
                    "source": [ "obj-84", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "midpoints": [ 1535.7773640751839, 864.5142366290092, 1589.791962325573, 864.5142366290092 ],
                    "order": 0,
                    "source": [ "obj-84", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-80", 0 ],
                    "midpoints": [ 1535.7773640751839, 864.5142366290092, 1368.6240803003311, 864.5142366290092 ],
                    "order": 3,
                    "source": [ "obj-84", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 1370.813861310482, 864.5142366290092, 1443.8065616488457, 864.5142366290092 ],
                    "order": 2,
                    "source": [ "obj-85", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "midpoints": [ 1370.813861310482, 864.5142366290092, 1513.1496269702911, 864.5142366290092 ],
                    "order": 1,
                    "source": [ "obj-85", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "midpoints": [ 1370.813861310482, 864.5142366290092, 1589.791962325573, 864.5142366290092 ],
                    "order": 0,
                    "source": [ "obj-85", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-80", 0 ],
                    "midpoints": [ 1370.813861310482, 864.5142366290092, 1368.6240803003311, 864.5142366290092 ],
                    "order": 3,
                    "source": [ "obj-85", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-635", 0 ],
                    "source": [ "obj-853", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-60", 0 ],
                    "source": [ "obj-87", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-89", 0 ],
                    "midpoints": [ 1732.127727985382, 1049.4248922467232, 1702.998775682645, 1049.4248922467232, 1702.998775682645, 638.0650782592129, 1207.3102125525475, 638.0650782592129 ],
                    "source": [ "obj-88", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-87", 1 ],
                    "source": [ "obj-89", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-91", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 0 ],
                    "source": [ "obj-92", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-85", 0 ],
                    "midpoints": [ 1370.813861310482, 809.4366561770439, 1370.813861310482, 809.4366561770439 ],
                    "source": [ "obj-93", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-132", 0 ],
                    "source": [ "obj-94", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-84", 0 ],
                    "midpoints": [ 1535.7773640751839, 809.4366561770439, 1535.7773640751839, 809.4366561770439 ],
                    "source": [ "obj-95", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-97", 0 ],
                    "order": 1,
                    "source": [ "obj-96", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-98", 0 ],
                    "midpoints": [ 1414.6094815135002, 727.9643255509436, 1570.8138602375984, 727.9643255509436 ],
                    "order": 0,
                    "source": [ "obj-96", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-85", 0 ],
                    "midpoints": [ 1414.6094815135002, 809.4366561770439, 1370.813861310482, 809.4366561770439 ],
                    "source": [ "obj-97", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-84", 0 ],
                    "midpoints": [ 1570.8138602375984, 809.4366561770439, 1535.7773640751839, 809.4366561770439 ],
                    "source": [ "obj-98", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-218", 0 ],
                    "source": [ "obj-99", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-232": [ "live.toggle[2]", "live.toggle", 0 ],
            "obj-386": [ "live.toggle[3]", "live.toggle", 0 ],
            "obj-396": [ "live.gain~[1]", "live.gain~", 0 ],
            "obj-65": [ "live.gain~", "live.gain~", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "toolbaradditions": [ "packagemanager" ]
    }
}