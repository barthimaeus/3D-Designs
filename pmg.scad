$fn = 20;
 

 
module stator(){
	difference(){
		difference(){
			cylinder(h=10,r=38, center=true);
			cylinder(h=10,r=31, center=true);
		}
		magnets();
	}
}

module magnets(){
    for (i = [0:30:360]){
            rotate([0,0,i]){
                    translate([32.5,0,0]) cube([5,10,10], center = true);
            }
    }
}


module rotor(){
    difference(){
        union(){
            cylinder(h=8, r=28, center=true);
            for (i = [0:30:360]){
                rotate([0,0,i]){
                    translate([28,0,0]) cube([3,6,8], center = true);
                }
            }
        } 
        for (i = [0:90:360]){
            rotate([0,0,i]){
                hull(){
                    translate([6,6,0])cylinder(h=8, r=2, center=true);
                    translate([20,6,0])cylinder(h=8, r=2, center=true);
                    translate([6,20,0])cylinder(h=8, r=2, center=true);
                }
            }
        }
        cylinder(h=8, r=3, center=true);
    }
}

module lid(){
	difference(){
		cylinder(h=2, r=38, center=true);
		cylinder(h=2, r=4, center=true);
	}
	difference(){
		translate([0,0,2]) cylinder(h=6,r=12, center=true);
		translate([0,0,2]) cylinder(h=6,r=9.5, center=true);
	}
}

module holes(){
	for (i = [15:60:390]){
		rotate([0,0,i]){
			translate([34,0,0]) cylinder(h=18,r=1, center=true);
		}
	}
}
 
difference(){
	union(){
		stator();
                rotor();
		//translate([0,0,8]) lid();
		translate([0,0,-8]) mirror([0,0,1]) lid();
	}
	holes();
}

