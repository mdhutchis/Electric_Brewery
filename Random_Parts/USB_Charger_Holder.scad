$fn=100;
//Base Plate
width=33.5;
depth=28.5;
difference () {
    translate([0,10,0]) cube([width,depth-10,1.5]);
    translate([5,15,0]) cube([width-10,depth-10-10,1.5]);
}

//Feet
translate([2.5,12.5,0]) cylinder(h=5, d=1.8);
translate([2.5,12.5+13.5,0]) cylinder(h=5, d=1.8);
translate([2.5+28.3,12.5,0]) cylinder(h=5, d=1.8);
translate([2.5+28.3,12.5+13.5,0]) cylinder(h=5, d=1.8);

//Mounting Pads
translate([-7,10,0]) difference() {cube([7,7,1.5]); translate([3.5,3.5,0]) cylinder(h=5,d=3.2);}
translate([-7,depth-5-2,0]) difference() {cube([7,7,1.5]); translate([3.5,3.5,0]) cylinder(h=5,d=3.2);}
translate([-7+width+7,10,0]) difference() {cube([7,7,1.5]); translate([3.5,3.5,0]) cylinder(h=5,d=3.2);}
translate([-7+width+7,depth-5-2,0]) difference() {cube([7,7,1.5]); translate([3.5,3.5,0]) cylinder(h=5,d=3.2);}

/*
difference() {
    //Front Wall (2.5mm overhang on sides)
    cube([50+2.5+2.5,2,15]);
    //USB Outloets
    translate([12.5,-1,5]) cube([30,4,6]);
}
*/