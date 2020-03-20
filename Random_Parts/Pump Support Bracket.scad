$fn= 100;
//difference() {
//cube([21,8,25]);
//translate([2,-1,2]) cube([27,27,21]);
//}

difference () {
    rotate([270,0,0]) linear_extrude(10) polygon(points=[[0,0],[20,0],[65,37.5],[65,55]]);
    translate([50,5,-42.5]) rotate([0,90,0]) cylinder(h=20, r=1.6);
    translate([34.5,5,-42.5]) rotate([0,90,0]) cylinder(h=20, r=3);
    translate([0,2.5,-5]) cube([40,5,2]);
    #translate([232,-100,-60]) cylinder(r=200, h=40);
}

