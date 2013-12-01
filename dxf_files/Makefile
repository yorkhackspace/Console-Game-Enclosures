%_Ply.eps: ../svg_files/%.svg
	inkscape -E $@ $< --export-id=layer2


%_Print.eps: ../svg_files/%.svg
	inkscape -E $@ $< --export-id=layer1


%_Acrylic.eps: ../svg_files/%.svg
	inkscape -E $@ $< --export-id=layer3


%.dxf: %.eps
	pstoedit -dt -f dxf:-polyaslines $< $@


all: console1_Ply.dxf console1_Print.dxf console1_Acrylic.dxf 
