$fn=30;


module part3($w1, $w2, $d, $h)
{
	difference(){
		hull(){
			cylinder(h=$h, r=0.5*$w1+$d,center=true);
			translate([(0.5*($w1+$w2)+$d),0,0])
				cylinder(h=$h, r=0.5*$w2+$d,center=true);
			translate([-(0.5*($w1+$w2)+$d),0,0])
				cylinder(h=$h, r=0.5*$w2+$d,center=true);
		}
		union(){
			cylinder(h=$h, r=0.5*$w1,center=true);
			translate([(0.5*($w1+$w2)+$d),0,0])
				cylinder(h=$h, r=0.5*$w2,center=true);
			translate([-(0.5*($w1+$w2)+$d),0,0])
				cylinder(h=$h, r=0.5*$w2,center=true);
		}
	}
}

part3($w1=10, $w2=5, $d=5, $h=10);

