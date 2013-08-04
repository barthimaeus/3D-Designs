$fn=40;


module part3(w1, d, h1, h2)
{
	difference(){
		union(){
			cylinder(h=h1, r=0.5*w1+d);
			translate([0,0,h1])cylinder(h=h2, r=0.5*w1+d/2);
		}
		cylinder(h=h1+h2, r=0.5*w1);
	}
}

part3(w1=9, d=10, h1=5, h2=10);

