Console-Game-Enclosures
=======================

CAD drawings and scripts for generating other CAD drawing of the boxes that the electronics for the space-console games will go in.

## In this repo we have...
* OpenSCAD scripts for making 3D models of the console from our DXFs ("scad\_files/SVGtoSTL\_Ply.scad" and \_Acrylic.scad)
* A folder containing an SVG file for each console ("svg\_files": currently just console1.svg). This SVG has three layers, a ply layer, a print layer and an acrylic layer. There is also an info layer but that's just for reference. The idea is that most things mount in the ply layer, controls poke through the acrylic layer and the print layer is just some paper sandwitched between the two. Clear acrylic will be used so that the printed layer is seen through the top of the console.
* An auto-generated folder for the auto-generated dxf files ("dxf\_files").To generate the dxfs, enter this directory and run make. Note that this directory will only exist if you have called make in the parent directory. See below...
	That is all so far.

## How it works...

* Step 1 is to enter the root director for this repo and run make. This should create the dxf\_files folder and generate a make file within it.
* Step 2 is to enter the new dxf\_files directory and run make. This will actually extract the dxf files from the inkscape svg.
* Step 3 is to convert these files to STLs so they can be visualised in meshlab or blender or similar, this is done by entering the stl\_files directory and running make with the target name as the svg file name (for example 'make console1' to create the STL files for console1.svg).

I will try to get all of these make files to chain together nicely so this is all automatic.

The dxf files that will need laser cutting for each console X are the consoleX\_ply.dxf and consoleX\_acrylic.dxf. The consoleX\_print.dxf is to be printed on A3 paper and manualy cut, trimmed and whatnot.

## To run things...

You will need a few things installed to be able to run things:
* inkscape
* openscad
* AutoDXFExtract (an x86_64 binary is in the repo, Lazarus code is in the AutoDXFExtract if you need to compile for another system)
* pstoedit (I think this comes with inkscape or openscad but i'm not sure)
* Make (obviously)
* As an option: things for viewing DXFs or STLs

To get the DXFs follow this example:


you@yourpc:~/Console-Game-Enclosures$ make

you@yourpc:~/Console-Game-Enclosures$ cd dxf\_files/

you@yourpc:~/Console-Game-Enclosures/dxf\_files$ make


To make the STL files you can then do the following:


you@yourpc:~/Console-Game-Enclosures/dxf\_files$ cd ../stl\_files/

you@yourpc:~/Console-Game-Enclosures/stl\_files$ make console1\_ALL


this will get you the STLs for console1
