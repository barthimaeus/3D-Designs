$fn=50;


module structure()
{
		union(){
			difference(){
				union(){
					cylinder(6, r=0.5*54);
					translate([0,0,6])cylinder(8, r=0.5*52);
				}
				translate([0,0,13.5])cylinder(0.5, r=0.5*49);
				translate([0,0,13])cylinder(0.5, r=0.5*44);
			}
			translate([0,0,13])cylinder(0.5, r=0.5*13);
		}
		translate([0,0,12.5])cylinder(1, r=0.5*10);
}

module holes(){
	cylinder(14, r=0.5*5);
	for (i = [0:5]){
		rotate(a=i*60, v = [0,0,1]){
			translate([8,0,0])cylinder(14, r=0.5*2);
		}
	}
}

difference(){
	structure();
	holes();
}

