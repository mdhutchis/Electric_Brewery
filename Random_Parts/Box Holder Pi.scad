Wall=3;
Thickness=1.5;
Height=61.5+1.5;
Length=56+3;
$fs = 0.01;
difference () {
cube([Length,Height,Thickness]);
translate([Wall, Wall, 0]) cube([Length-Wall*2,Height-Wall*2,2]);
}
difference () {
  translate([Length,Height-10,0]) cube([10,10,Thickness]);
  translate([Length+5,Height+5-10,0]) cylinder(Thickness,1.5,1.5);
}

difference () {
  translate([Length,0,0]) cube([10,10,Thickness]);
  translate([Length+5,5,0]) cylinder(Thickness,1.5,1.5);
}

difference () {
  translate([-10,Height-10,0]) cube([10,10,Thickness]);
  translate([-10+5,Height-5,0]) cylinder(Thickness,1.5,1.5);
}

difference () {
  translate([-10,0,0]) cube([10,10,Thickness]);
  #translate([-10+5,5,0]) cylinder(Thickness,1.5,1.5);
}


//Relays
module relay(xx, yy) {
    translate([xx,yy,0]) difference () {cube([4.5,4.5,9]); translate([1.5,1.5,5]) cube([3,3,2]);}
    translate([xx+56,yy,0]) difference () {cube([4.5,4.5,9]); translate([0,1.5,5]) cube([3,3,2]);}
    translate([xx,yy+61.5-1.5,0]) difference () {cube([4.5,3,9]); translate([1.5,0,5]) cube([3,5,2]);}
    translate([xx+56,yy+61.5-1.5,0]) difference () {cube([4.5,3,9]); translate([0,0,5]) cube([3,5,2]);}

}

relay(0,0);



