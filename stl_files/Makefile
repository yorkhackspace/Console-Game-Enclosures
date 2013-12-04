.PHONY: %_ALL

.SECONDARY: %_Ply.stl %_Acrylic.stl


%_Ply.stl: ../scad_files/SVGtoSTL_Ply.scad ../svg_files/%.svg
	openscad -D 'name="$*"' -m make -o $@ -d $@.deps $<

%_Acrylic.stl: ../scad_files/SVGtoSTL_Acrylic.scad ../svg_files/%.svg
	openscad -D 'name="$*"' -m make -o $@ -d $@.deps $<

%_ALL: %_Acrylic.stl %_Ply.stl
	


