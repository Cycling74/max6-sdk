{
	"patcher" : 	{
		"rect" : [ 48.0, 56.0, 553.0, 367.0 ],
		"bglocked" : 0,
		"defrect" : [ 48.0, 56.0, 553.0, 367.0 ],
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
					"patching_rect" : [ 387.0, 297.0, 55.0, 20.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-4",
					"hidden" : 1,
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"varname" : "autohelp_dac",
					"local" : 1,
					"patching_rect" : [ 76.0, 285.0, 45.0, 45.0 ],
					"numoutlets" : 0,
					"id" : "obj-26",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_dac_text",
					"text" : "start audio",
					"linecount" : 2,
					"patching_rect" : [ 35.0, 291.0, 38.0, 33.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-34",
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
					"patching_rect" : [ 28.0, 280.0, 100.0, 55.0 ],
					"numoutlets" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-39",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0, 1 100 0 1000",
					"patching_rect" : [ 90.0, 168.0, 91.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-9",
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "line~",
					"patching_rect" : [ 90.0, 193.0, 35.0, 20.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"fontname" : "Arial",
					"id" : "obj-10",
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~",
					"patching_rect" : [ 76.0, 227.0, 32.5, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"fontname" : "Arial",
					"id" : "obj-11",
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 165.0, 100.0, 50.0, 20.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"id" : "obj-12",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "cycle~ 440",
					"patching_rect" : [ 76.0, 101.0, 66.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"fontname" : "Arial",
					"id" : "obj-16",
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~ 0.2",
					"patching_rect" : [ 76.0, 130.0, 108.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"fontname" : "Arial",
					"id" : "obj-17",
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "optional argument is scale factor if signal isn't connected to right inlet",
					"linecount" : 2,
					"patching_rect" : [ 188.0, 123.0, 188.0, 33.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-19",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "If signals are connected to both inlets, the left signal is multiplied by the right signal. If a signal is only connected to left inlet, it is multiplied by the argument or a float in the right inlet.",
					"linecount" : 4,
					"patching_rect" : [ 258.0, 193.0, 256.0, 60.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-20",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "click here to make a note",
					"patching_rect" : [ 185.0, 168.0, 145.0, 20.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-21",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "signal multiply implements an amplitude envelope",
					"linecount" : 2,
					"patching_rect" : [ 108.0, 221.0, 147.0, 33.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-22",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_title",
					"text" : "*~",
					"patching_rect" : [ 10.0, 8.0, 485.0, 30.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-5",
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
					"text" : "Multiply two signals",
					"patching_rect" : [ 10.0, 36.0, 485.0, 21.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-6",
					"frgb" : [ 0.2, 0.2, 0.2, 1.0 ],
					"fontsize" : 11.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_description",
					"text" : "*~ is a signal multiplier-operator that outputs a signal which is the multiplication between two signals.",
					"patching_rect" : [ 10.0, 57.0, 523.0, 20.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-7",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "autohelp_top_ref",
					"bordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"patching_rect" : [ 384.55481, 22.0, 115.445206, 14.66663 ],
					"bgoveroncolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "open *~ reference",
					"numoutlets" : 3,
					"spacing_x" : 0.0,
					"fontlink" : 1,
					"outlettype" : [ "int", "", "int" ],
					"underline" : 1,
					"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"textcolor" : [ 0.324, 0.44, 0.587, 1.0 ],
					"bgoncolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"textoncolor" : [ 0.27, 0.35, 0.47, 1.0 ],
					"fontname" : "Arial",
					"textovercolor" : [ 0.33, 0.45, 0.6, 1.0 ],
					"bgovercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"id" : "obj-8",
					"spacing_y" : 0.0,
					"presentation_rect" : [ 0.0, 0.0, 115.445206, 14.66663 ],
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
					"patching_rect" : [ 392.0, 301.0, 100.0, 20.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-14",
					"fontface" : 1,
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "autohelp_see_menu",
					"patching_rect" : [ 392.0, 321.0, 130.0, 20.0 ],
					"numoutlets" : 3,
					"types" : [  ],
					"items" : [ "(Objects:)", ",", "!\/~", ",", "\/~", ",", "<separator>", ",", "(Tutorials:)", ",", "Tutorial_2", ",", "Tutorial_8" ],
					"outlettype" : [ "int", "", "" ],
					"fontname" : "Arial",
					"id" : "obj-15",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "autohelp_top_panel",
					"patching_rect" : [ 5.0, 5.0, 495.0, 52.0 ],
					"grad2" : [ 0.9, 0.9, 0.9, 1.0 ],
					"numoutlets" : 0,
					"background" : 1,
					"id" : "obj-13",
					"grad1" : [ 0.88, 0.98, 0.78, 1.0 ],
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
					"patching_rect" : [ 387.0, 297.0, 140.0, 50.0 ],
					"numoutlets" : 0,
					"background" : 1,
					"bgcolor" : [ 0.85, 0.85, 0.85, 0.75 ],
					"id" : "obj-18",
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-17", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [ 85.5, 249.0, 85.5, 282.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-26", 1 ],
					"hidden" : 0,
					"midpoints" : [ 85.5, 270.0, 111.5, 270.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-11", 1 ],
					"hidden" : 0
				}

			}
 ]
	}

}
