{
	"patcher" : 	{
		"rect" : [ 53.0, 63.0, 507.0, 443.0 ],
		"bglocked" : 0,
		"defrect" : [ 53.0, 63.0, 507.0, 443.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "-~ 1",
					"patching_rect" : [ 66.0, 228.0, 32.5, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"fontname" : "Arial",
					"id" : "obj-36",
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~ 2",
					"patching_rect" : [ 66.0, 202.0, 32.5, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"fontname" : "Arial",
					"id" : "obj-35",
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "autohelp",
					"patching_rect" : [ 348.0, 381.0, 55.0, 20.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-9",
					"hidden" : 1,
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 121.0, 318.0, 50.0, 20.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"id" : "obj-7",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"varname" : "autohelp_dac",
					"local" : 1,
					"patching_rect" : [ 66.0, 386.0, 45.0, 45.0 ],
					"numoutlets" : 0,
					"id" : "obj-3",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~ 0.2",
					"patching_rect" : [ 66.0, 346.0, 74.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"fontname" : "Arial",
					"id" : "obj-4",
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_dac_text",
					"text" : "start audio",
					"linecount" : 2,
					"patching_rect" : [ 25.0, 392.0, 38.0, 33.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-5",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "startwinwdow_panel",
					"border" : 2,
					"bordercolor" : [ 0.392157, 0.792157, 0.117647, 1.0 ],
					"patching_rect" : [ 18.0, 381.0, 100.0, 55.0 ],
					"numoutlets" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-6",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "200, 2000 500 200 1000",
					"patching_rect" : [ 274.0, 161.0, 136.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-15",
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 241.0, 213.0, 50.0, 20.0 ],
					"numoutlets" : 2,
					"maximum" : 1.0,
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"minimum" : 0.0,
					"id" : "obj-16",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 154.0, 162.0, 50.0, 20.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"id" : "obj-17",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "$1 30",
					"patching_rect" : [ 154.0, 187.0, 40.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-18",
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "line~ 200",
					"patching_rect" : [ 154.0, 211.0, 58.0, 20.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"fontname" : "Arial",
					"id" : "obj-19",
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "phasor~ 150",
					"patching_rect" : [ 66.0, 177.0, 75.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"fontname" : "Arial",
					"id" : "obj-22",
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "lores~ 200 0.75",
					"patching_rect" : [ 66.0, 266.0, 194.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"fontname" : "Arial",
					"id" : "obj-23",
					"fontsize" : 10.0,
					"numinlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "frequency",
					"patching_rect" : [ 167.0, 243.0, 59.0, 20.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-25",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "input",
					"patching_rect" : [ 75.0, 250.0, 35.0, 20.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-26",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "A special shout out to Jean Laroche for the formula.",
					"linecount" : 2,
					"patching_rect" : [ 306.0, 324.0, 151.0, 33.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-27",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "resonance (signal or float)",
					"patching_rect" : [ 253.0, 244.0, 143.0, 20.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-28",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "set cutoff frequency",
					"patching_rect" : [ 153.0, 139.0, 117.0, 20.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-29",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "filter sweep",
					"patching_rect" : [ 294.0, 142.0, 82.0, 20.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-30",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "harmonically rich input source",
					"linecount" : 3,
					"patching_rect" : [ 66.0, 127.0, 77.0, 46.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-31",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "output",
					"patching_rect" : [ 75.0, 285.0, 41.0, 20.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-32",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "arguments for initial cutoff frequency (default 0) and resonance (default 0)",
					"linecount" : 2,
					"patching_rect" : [ 263.0, 266.0, 199.0, 33.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-34",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_title",
					"text" : "lores~",
					"patching_rect" : [ 10.0, 8.0, 485.0, 30.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-10",
					"frgb" : [ 0.2, 0.2, 0.2, 1.0 ],
					"fontface" : 3,
					"fontsize" : 18.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_digest",
					"text" : "Resonant lowpass filter",
					"patching_rect" : [ 10.0, 36.0, 485.0, 21.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-11",
					"frgb" : [ 0.2, 0.2, 0.2, 1.0 ],
					"fontsize" : 11.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_description",
					"text" : "lores~ implements an inexpensive lowpass with an adjustment that lets you add a specified resonance. The middle inlet sets a kind of cutoff frequency, but the sharpness of the filter depends on the resonance passed in through the right inlet (0 is a little bit sharp and 1 as sharp as possible).",
					"linecount" : 4,
					"patching_rect" : [ 10.0, 57.0, 485.0, 60.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-12",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "autohelp_top_ref",
					"bordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"patching_rect" : [ 359.022156, 22.0, 140.977844, 14.66663 ],
					"spacing_x" : 0.0,
					"bgoncolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "open lores~ reference",
					"numoutlets" : 3,
					"textovercolor" : [ 0.33, 0.45, 0.6, 1.0 ],
					"outlettype" : [ "int", "", "int" ],
					"underline" : 1,
					"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"textcolor" : [ 0.318, 0.43, 0.574, 1.0 ],
					"spacing_y" : 0.0,
					"bgoveroncolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontname" : "Arial",
					"fontlink" : 1,
					"textoncolor" : [ 0.27, 0.35, 0.47, 1.0 ],
					"id" : "obj-13",
					"bgovercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"presentation_rect" : [ 0.0, 0.0, 140.977844, 14.66663 ],
					"fontface" : 3,
					"fontsize" : 11.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_see_title",
					"text" : "See Also:",
					"patching_rect" : [ 353.0, 385.0, 100.0, 20.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-20",
					"fontface" : 1,
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "autohelp_see_menu",
					"patching_rect" : [ 353.0, 405.0, 130.0, 20.0 ],
					"numoutlets" : 3,
					"types" : [  ],
					"items" : [ "(Objects:)", ",", "Biquad~", ",", "Buffir~", ",", "Comb~", ",", "Filtergraph~", ",", "Onepole~", ",", "Reson~" ],
					"outlettype" : [ "int", "", "" ],
					"fontname" : "Arial",
					"id" : "obj-21",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "autohelp_top_panel",
					"patching_rect" : [ 5.0, 5.0, 495.0, 52.0 ],
					"grad1" : [ 0.88, 0.98, 0.78, 1.0 ],
					"numoutlets" : 0,
					"background" : 1,
					"id" : "obj-14",
					"grad2" : [ 0.9, 0.9, 0.9, 1.0 ],
					"mode" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "autohelp_see_panel",
					"border" : 2,
					"bordercolor" : [ 0.5, 0.5, 0.5, 0.75 ],
					"patching_rect" : [ 348.0, 381.0, 140.0, 50.0 ],
					"numoutlets" : 0,
					"background" : 1,
					"bgcolor" : [ 0.85, 0.85, 0.85, 0.75 ],
					"id" : "obj-33",
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-23", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-4", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-3", 1 ],
					"hidden" : 0,
					"midpoints" : [ 75.5, 374.0, 101.5, 374.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-23", 2 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0
				}

			}
 ]
	}

}
