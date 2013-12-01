Console-Game-Enclosures
=======================

CAD drawings and scripts for generating other CAD drawing of the boxes that the electronics for the space-console games will go in.

In this repo we have...
-An OpenSCAD script for making a 3D model of the console from our DXFs ("dxfsTo3D.scad")
-A folder containing an SVG file for each console ("svg_files": currently just console1.svg)
--This SVG has three layers, a ply layer, a print layer and an acrylic layer. The idea is that most things mount in the ply layer, controls poke through the acrylic layer and the print layer is just some paper sandwitched between the two. Clear acrylic will be used so that the printed layer is seen through the top of the console.

-A folder for the auto-generated dxf files ("dxf_files") to generate the dxfs, enter this directory and run make.
	That is all so far.

How it works:
	For each console, a dxf should be generated per layer. this is what the makefile in the folder dxf_files is for. It is a rather specific makefile however. If anybody fancies writing a tool to generate this makefile from the SVG then go ahead, you can ask Dan for details on what it needs to do.
	These dxfs are then used to create the 3D model in OpenSCAD, this can be used to make sure that things will fit properly.
	The dxf files that will need laser cutting for each console X are the consoleX_ply.dxf and consoleX_acrylic.dxf. The consoleX_print.dxf is to be printed on A3 paper and manualy cut, trimmed and whatnot.
