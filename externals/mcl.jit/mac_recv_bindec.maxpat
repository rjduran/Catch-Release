{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 530.0, 262.0, 536.0, 527.0 ],
		"bglocked" : 0,
		"defrect" : [ 530.0, 262.0, 536.0, 527.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 11.595187,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Click this if you want to receive from any IP address",
					"numoutlets" : 0,
					"fontsize" : 11.595187,
					"patching_rect" : [ 24.0, 27.0, 274.0, 20.0 ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Sender's IP address and receiving port",
					"numoutlets" : 0,
					"fontsize" : 11.595187,
					"patching_rect" : [ 111.0, 66.0, 247.0, 20.0 ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p bitrate",
					"numoutlets" : 1,
					"fontsize" : 14.0,
					"patching_rect" : [ 22.0, 201.0, 68.0, 23.0 ],
					"outlettype" : [ "float" ],
					"fontname" : "Arial Bold",
					"numinlets" : 1,
					"id" : "obj-37",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 45.0, 86.0, 537.0, 304.0 ],
						"bglocked" : 0,
						"defrect" : [ 45.0, 86.0, 537.0, 304.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t f",
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 132.0, 218.0, 21.0, 20.0 ],
									"outlettype" : [ "float" ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr 0.01*($i1+$i2)",
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 132.0, 183.0, 112.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"id" : "obj-54"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr 256*$i1",
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 132.0, 149.0, 78.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"id" : "obj-55"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jit.spill @offset 1 0 @plane 0 @listlength 1",
									"numoutlets" : 2,
									"fontsize" : 11.595187,
									"patching_rect" : [ 273.0, 103.0, 228.0, 20.0 ],
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"id" : "obj-35"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jit.spill @offset 0 0 @plane 0 @listlength 1",
									"numoutlets" : 2,
									"fontsize" : 11.595187,
									"patching_rect" : [ 24.0, 102.0, 228.0, 20.0 ],
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"id" : "obj-28"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 133.0, 259.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"id" : "obj-2",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 100.0, 46.0, 25.0, 25.0 ],
									"outlettype" : [ "jit_matrix" ],
									"numinlets" : 0,
									"id" : "obj-1",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [ 109.5, 88.0, 282.5, 88.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [ 109.5, 88.0, 33.5, 88.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-54", 1 ],
									"hidden" : 0,
									"midpoints" : [ 282.5, 172.0, 234.5, 172.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [ 33.5, 133.0, 141.5, 133.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.split @splitpoint 2",
					"numoutlets" : 3,
					"fontsize" : 14.0,
					"patching_rect" : [ 22.0, 163.0, 150.0, 23.0 ],
					"outlettype" : [ "jit_matrix", "jit_matrix", "" ],
					"fontname" : "Arial Bold",
					"numinlets" : 1,
					"id" : "obj-40"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "bitrate $1",
					"numoutlets" : 1,
					"fontsize" : 11.595187,
					"patching_rect" : [ 22.0, 233.0, 59.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"numinlets" : 2,
					"id" : "obj-41"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mcl.jit.spihtbindec",
					"numoutlets" : 2,
					"fontsize" : 14.0,
					"patching_rect" : [ 186.0, 239.0, 133.0, 23.0 ],
					"outlettype" : [ "jit_matrix", "" ],
					"fontname" : "Arial Bold",
					"numinlets" : 1,
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"patching_rect" : [ 124.0, 123.0, 20.0, 20.0 ],
					"outlettype" : [ "bang" ],
					"numinlets" : 1,
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print msg",
					"numoutlets" : 0,
					"fontsize" : 11.595187,
					"patching_rect" : [ 150.0, 118.0, 58.0, 20.0 ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print",
					"numoutlets" : 0,
					"fontsize" : 11.595187,
					"patching_rect" : [ 303.0, 150.0, 33.0, 20.0 ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ip ANY",
					"numoutlets" : 1,
					"fontsize" : 11.595187,
					"patching_rect" : [ 22.0, 56.0, 47.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"numinlets" : 2,
					"id" : "obj-18"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numoutlets" : 1,
					"patching_rect" : [ 228.0, 148.0, 20.0, 20.0 ],
					"outlettype" : [ "int" ],
					"numinlets" : 1,
					"id" : "obj-22"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route connected",
					"numoutlets" : 2,
					"fontsize" : 11.595187,
					"patching_rect" : [ 228.0, 121.0, 94.0, 20.0 ],
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"id" : "obj-23"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.net.recv @ip 199.60.14.181 @port 7474",
					"numoutlets" : 3,
					"fontsize" : 14.0,
					"patching_rect" : [ 21.0, 89.0, 284.0, 23.0 ],
					"outlettype" : [ "jit_matrix", "", "" ],
					"fontname" : "Arial Bold",
					"numinlets" : 1,
					"id" : "obj-25"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"numoutlets" : 2,
					"background" : 1,
					"patching_rect" : [ 185.0, 277.0, 290.0, 219.0 ],
					"outlettype" : [ "", "" ],
					"numinlets" : 1,
					"id" : "obj-44"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 31.5, 261.0, 171.0, 261.0, 171.0, 234.0, 195.5, 234.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 1 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 97.0, 196.0, 195.5, 196.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [ 195.5, 261.0, 194.5, 279.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 1 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 163.0, 111.0, 159.5, 111.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 2 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 31.5, 75.0, 30.5, 75.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}