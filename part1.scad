$fn=50;

module example001()
{
	difference() {

		minkowski(){
			cube([20,20,10], center=true);
			cylinder(r=2,h=0.1, center=true);
		}
		cylinder(h=11, r=5, center=true);
		for (i=[1:4]){
			rotate(90 * i, [0,0,1]) translate([8,8,0])cylinder(h=10.5, r=2, center=true);
		}
	}
	
	
	
}

example001();

