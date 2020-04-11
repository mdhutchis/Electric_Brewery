cube([1.5,26.5,4]);
difference() {
cube([60,26.5,1.3]);
translate([18,0,0]) cube([23,2,5]);
translate([18,24.5,0]) cube([23,2,5]);
translate([47,26.5/2,0]) cylinder(h=5, r=11);
translate([30,5,0]) cube([10,16.5,25]);
}