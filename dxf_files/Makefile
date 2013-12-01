all: console1_ply.dxf console1_print.dxf console1_acrylic.dxf

%_ply.eps: ../svg_files/%.svg
	inkscape -E $@ $< --export-id=layer2 

%_print.eps: ../svg_files/%.svg
	inkscape -E $@ $< --export-id=layer1
 
%_acrylic.eps: ../svg_files/%.svg
	inkscape -E $@ $< --export-id=layer3
 
%.dxf: %.eps
	pstoedit -dt -f dxf:-polyaslines $< $@
