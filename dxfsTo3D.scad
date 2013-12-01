
//Plywood layer, 3mm, goes on the bottom

translate ([0,0,1.5])
	linear_extrude(height = 3, center = true, convexity = 10)
		scale([25.4,25.4,25.4])
			color("brown")
				import (file = "dxf_files/console1_ply.dxf");

//Print layer, (sheet of paper), goes in the middle

translate ([0,0,3.005])
	linear_extrude(height = 0.01, center = true, convexity = 10)
		scale([25.4,25.4,25.4])
			color("white")
				import (file = "dxf_files/console1_print.dxf");

//Acrylic layer, 3mm, goes on the top
translate ([0,0,4.51])
	linear_extrude(height = 3, center = true, convexity = 10)
		scale([25.4,25.4,25.4])
			color("green")
				import (file = "dxf_files/console1_acrylic.dxf");