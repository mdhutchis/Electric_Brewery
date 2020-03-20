module hex(hole, wall, thick){
    hole = hole;
    wall = wall;
    difference(){
        rotate([0, 0, 30]) cylinder(d = (hole + wall), h = thick, $fn = 6);
        translate([0, 0, -0.1]) rotate([0, 0, 30]) cylinder(d = hole, h = thick + 0.2, $fn = 6);
    }
}



module hexgrid(box, holediameter, wallthickness) {
    a = (holediameter + (wallthickness/2))*sin(60);
    for(x = [holediameter/2: a: box[0]]) {
        for(y = [holediameter/2: 2*a*sin(60): box[1]]) {
            translate([x, y, 0]) hex(holediameter, wallthickness, box[2]);
            translate([x + a*cos(60), y + a*sin(60), 0]) hex(holediameter, wallthickness, box[2]);

        }
    }
        
}

// first arg is vector that defines the bounding box, length, width, height
// second arg in the 'diameter' of the holes. In OpenScad, this refers to the corner-to-corner diameter, not flat-to-flat
// this diameter is 2/sqrt(3) times larger than flat to flat
// third arg is wall thickness.  This also is measured that the corners, not the flats. 

#translate([1,0,0]) hexgrid([55, 35, 2], 7.5, 2.5);
translate([3.5,20,0]) linear_extrude(2)  text("V-S-S", font = "Verdana:style=Bold Italic", size=12);
translate([4,8,0]) linear_extrude(2)  text("Brewing", font = "Verdana:style=Bold Italic", size=8);
difference() {cube([60,40,2]); translate([3,3,0]) cube([60-6,40-6,2]);}
//for (a =[0:20]) linear_extrude(1/20) difference () {#translate([-3+a/20,-3+a/20,a/20+1]) square([60+5-a/10,40+5-a/10]); translate([3,3,a/20+2]) square([60-6,40-6]);};

for (a =[0:20]) {
difference () {
    translate([-2.5+a/20,-2.5+a/20,a/10]) linear_extrude(1/10) square([60+5-a/10,40+5-a/10]);
    translate([3,3,a/10-.5]) linear_extrude(1) square([60-6,40-6]);
}
}

translate([0,0,-8.5]) union() {cube([2,6,8.5]); translate([-6,0,-8.5+6.5]) cube([2+6,6,2]);};
translate([0,35-1,-8.5]) union() {cube([2,6,8.5]); translate([-6,0,-8.5+6.5]) cube([2+6,6,2]);};
translate([60,6,-8.5]) rotate([0,0,180]) union() {cube([2,6,8.5]); translate([-6,0,-8.5+6.5]) cube([2+6,6,2]);};
translate([60,35-1+6,-8.5]) rotate([0,0,180]) union() {cube([2,6,8.5]); translate([-6,0,-8.5+6.5]) cube([2+6,6,2]);};