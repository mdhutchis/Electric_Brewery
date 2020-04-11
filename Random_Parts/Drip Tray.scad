difference() {
  cube([30,30,25]);
  translate([1,1,1]) cube([28,28,30]);
}

difference () {
translate([0,-3,0]) cube([3,3,25]);
translate([1.5,-1.5,0]) cube([1.5,1.5,25]);
}

translate([27,0,0]) difference () {
translate([0,-3,0]) cube([3,3,25]);
#translate([0,-1.5,0]) cube([1.5,1.5,25]);
}