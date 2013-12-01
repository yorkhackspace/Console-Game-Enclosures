#This makefile should make the other makefile and then execute them

dxf_files/Makefile: svg_files/console1.svg
	./AutoDXFExtract -o $@ -i $^ 

all: dxf_files/Makefile
	cd dxf_files; make -B all
