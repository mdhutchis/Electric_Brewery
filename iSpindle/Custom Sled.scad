$fn=100;

difference() {
//Basic shape
union() {
cube([133,30,10]);
translate([133,30/2,0])cylinder(10,30/2,30/2);
}
//Remove area for circuit board
translate([9,2.5,0]) cube([45-9,30-5,10]);
translate([0,5,0]) cube([9,29.5-10,10]);
//Remove notch for circuit board
translate([6,0,5]) cube([48-6,30,2.5]);
//Remove other side of clip
translate([9,0,0]) cube([45-9,30,5]);

translate([53,0,-2.5]) cube([133,39.9,10]);
#translate([56,4,6.5]) cube([76,22,2,]);

//Remove cylinder for battery
//translate([138,15,-1]) rotate([0,275,0]) cylinder(h=68,d1=20,d2=20);
//Battery zap strap
//translate([105,2,0]) cube([5,2,10]);
//translate([105,26,0]) cube([5,2,10]);



}


//translate([0,0,0]) cube([45,33,3]);
