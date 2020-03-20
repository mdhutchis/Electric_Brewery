Wall=10;
Thickness=1.5;
Height=62.5;
Length=125;
$fs = 0.01;
difference () {
cube([Length,Height,Thickness]);
translate([Wall, Wall, 0]) cube([Length-Wall*2,Height-Wall*2,2]);
translate([5.5,5.5,0]) cylinder(Thickness,1.5,1.5);
translate([Length-5.5,5.5,0]) cylinder(Thickness+1,1.5,1.5);
translate([Length-5.5,Height-5.5,0]) cylinder(Thickness,1.5,1.5);
translate([5.5,Height-5.5,0]) cylinder(Thickness,1.5,1.5);
}
difference () {
    cube([Length,2,Wall]);
    #translate([15,2.5,5+1]) rotate([90,0,0]) cylinder(3,1.5,1.5);
    translate([Length-15,2.5,5+1]) rotate([90,0,0]) cylinder(3,1.5,1.5);
}
difference () {
    translate([2,0,0]) rotate([0,0,90]) cube([Height,2,Wall]);
    translate([0,12,5+1]) rotate([0,90,0]) cylinder(3,1.5,1.5);
    translate([0,Height-12,5+1]) rotate([0,90,0]) cylinder(3,1.5,1.5);
}