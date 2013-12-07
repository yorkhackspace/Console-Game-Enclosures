name = "console1";

//Acrylic layer, 3mm, goes on the top
translate ([0,0,4.5])
	linear_extrude(height = 3, center = true, convexity = 10)
		scale([25.4,25.4,25.4])
			color("green")
				import (file = str( "../dxf_files/", name, "/",name,"_Acrylic.dxf"));