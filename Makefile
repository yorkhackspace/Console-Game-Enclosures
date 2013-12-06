#This makefile should make the other makefile and then execute them
.SECONDARY:
	

dxf_files/%/Makefile: svg_files/%.svg
	mkdir -p dxf_files/$*
	./AutoDXFExtract -o $@ -i $^ -p ../../svg_files

%_ALL: dxf_files/%/Makefile
	cd dxf_files/$*; make -i -B all
