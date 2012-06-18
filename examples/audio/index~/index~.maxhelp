{
	"patcher" : 	{
		"rect" : [ 51.0, 63.0, 473.0, 363.0 ],
		"bglocked" : 0,
		"defrect" : [ 51.0, 63.0, 473.0, 363.0 ],
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
					"text" : "autohelp",
					"patching_rect" : [ 318.0, 298.0, 55.0, 20.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-2",
					"hidden" : 1,
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 234.0, 235.0, 50.0, 20.0 ],
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
					"patching_rect" : [ 179.0, 304.0, 45.0, 45.0 ],
					"numoutlets" : 0,
					"id" : "obj-3",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~ 1.",
					"patching_rect" : [ 179.0, 263.0, 74.0, 20.0 ],
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
					"patching_rect" : [ 138.0, 310.0, 38.0, 33.0 ],
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
					"patching_rect" : [ 131.0, 299.0, 100.0, 55.0 ],
					"numoutlets" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-6",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "read",
					"patching_rect" : [ 39.0, 112.0, 34.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-14",
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number~",
					"patching_rect" : [ 119.0, 182.0, 50.0, 20.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "signal", "float" ],
					"fontname" : "Arial",
					"sig" : 0.0,
					"id" : "obj-15",
					"interval" : 250.0,
					"mode" : 2,
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 180.0, 109.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"id" : "obj-19",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "count~ 0 22050",
					"patching_rect" : [ 180.0, 132.0, 91.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"fontname" : "Arial",
					"id" : "obj-20",
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "buffer~ foo 500",
					"patching_rect" : [ 39.0, 134.0, 89.0, 20.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"id" : "obj-21",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "index~ foo",
					"patching_rect" : [ 180.0, 182.0, 144.0, 20.0 ],
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
					"maxclass" : "comment",
					"text" : "sample index signal in",
					"patching_rect" : [ 191.0, 161.0, 123.0, 20.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-23",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "channel in (1-4)",
					"patching_rect" : [ 318.0, 161.0, 89.0, 20.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-24",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "buffer~ sample value at index out",
					"patching_rect" : [ 192.0, 205.0, 180.0, 20.0 ],
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
					"varname" : "autohelp_top_title",
					"text" : "index~",
					"patching_rect" : [ 10.0, 8.0, 453.0, 30.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-8",
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
					"text" : "Sample playback without interpolation",
					"patching_rect" : [ 10.0, 36.0, 453.0, 21.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-9",
					"frgb" : [ 0.2, 0.2, 0.2, 1.0 ],
					"fontsize" : 11.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "autohelp_top_ref",
					"bordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"patching_rect" : [ 324.193512, 22.0, 143.806488, 14.66663 ],
					"spacing_x" : 0.0,
					"bgoncolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "open index~ reference",
					"numoutlets" : 3,
					"textovercolor" : [ 0.33, 0.45, 0.6, 1.0 ],
					"outlettype" : [ "int", "", "int" ],
					"underline" : 1,
					"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"textcolor" : [ 0.306, 0.41, 0.548, 1.0 ],
					"spacing_y" : 0.0,
					"bgoveroncolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontname" : "Arial",
					"fontlink" : 1,
					"textoncolor" : [ 0.27, 0.35, 0.47, 1.0 ],
					"id" : "obj-11",
					"bgovercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"presentation_rect" : [ 0.0, 0.0, 143.806488, 14.66663 ],
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
					"patching_rect" : [ 323.0, 302.0, 100.0, 20.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-13",
					"fontface" : 1,
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "autohelp_see_menu",
					"patching_rect" : [ 323.0, 322.0, 130.0, 20.0 ],
					"numoutlets" : 3,
					"types" : [  ],
					"items" : [ "(Objects:)", ",", "2d.wave~", ",", "Cycle~", ",", "Buffer~", ",", "Buffir~", ",", "Fft~", ",", "Wave~", ",", "<separator>", ",", "(Tutorials:)", ",", "Tutorial_13" ],
					"outlettype" : [ "int", "", "" ],
					"fontname" : "Arial",
					"id" : "obj-16",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "autohelp_top_panel",
					"patching_rect" : [ 5.0, 5.0, 463.0, 52.0 ],
					"grad1" : [ 0.88, 0.98, 0.78, 1.0 ],
					"numoutlets" : 0,
					"background" : 1,
					"id" : "obj-12",
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
					"patching_rect" : [ 318.0, 298.0, 140.0, 50.0 ],
					"numoutlets" : 0,
					"background" : 1,
					"bgcolor" : [ 0.85, 0.85, 0.85, 0.75 ],
					"id" : "obj-17",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_description",
					"text" : "index~ reads data from a buffer~ (of the same name) by a signal sample index. It does no interpolation on its output. It can be used for fft-windowing applications using the right outlet of fft~ or ifft~ .",
					"linecount" : 3,
					"patching_rect" : [ 10.0, 57.0, 455.0, 46.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-18",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 189.5, 166.0, 128.5, 166.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0
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
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-3", 1 ],
					"hidden" : 0,
					"midpoints" : [ 188.5, 291.0, 214.5, 291.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-4", 1 ],
					"hidden" : 0
				}

			}
 ]
	}

}
