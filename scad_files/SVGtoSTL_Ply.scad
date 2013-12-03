name = "console1";

//Plywood layer, 3mm, goes on the bottom
translate ([0,0,1.5])
	linear_extrude(height = 3, center = true, convexity = 10)
		scale([25.4,25.4,25.4])
			color("brown")
				import (file = str("../dxf_files/", name, "_Ply.dxf"));