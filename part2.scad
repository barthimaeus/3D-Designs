$fn=25;

module part2()
{
	difference() {

		minkowski(){
			cube([20,20,10], center=true);
			cylinder(r=1.5,h=0.01, center=true);
		}
		translate([0,0,1.5]) cube([20,20,10], center=true);
		rotate(90, [1,0,0]) cylinder(r=1.5, h=23, center=true);
		rotate(90, [1,0,0]) rotate(90, [0,1,0]) cylinder(r=1.5, h=23, center=true);
	}
	
	
	
}

part2();

