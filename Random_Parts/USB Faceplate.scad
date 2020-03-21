difference() {
cube([40,16.5,1.5]);
translate([5,5,0]) cube([30,6.5,1.5]);
}
//Bottom Insert
translate([10,1.25,0]) cube([20,1.85,10]);
//Between USBs
translate([20-2.5/2,4,0]) cube([2.5,10,1.5]);
//Post between USBs
translate([20-2/2,5.75,0]) cube([2,5,6]);
