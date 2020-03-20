module relay(xx, yy) {
translate([xx+1.8,yy,0]) cylinder(7,1.8,1.2);
translate([xx+53-1.8,yy,0]) cylinder(7,1.8,1.2);
translate([xx+1.8,yy-14,0]) cylinder(7,1.8,1.2);
translate([xx+53-1.8,yy-14,0]) cylinder(7,1.8,1.2);
}
module relay2(xx, yy) {
    translate([xx,yy,0]) difference () {cube([4.5,4.5,9]); translate([1.5,1.5,5]) cube([3,3,2]);}
    translate([xx+53-1,yy,0]) difference () {cube([4.5,4.5,9]); translate([0,1.5,5]) cube([3,3,2]);}
    translate([xx,yy+18-1,0]) difference () {cube([4.5,4.5,9]); translate([1.5,0,5]) cube([3,3,2]);}
    translate([xx+53-1,yy+18-1,0]) difference () {cube([4.5,4.5,9]); translate([0,0,5]) #cube([3,3,2]);}

}
$fs = 0.01;
difference() {
    cube([53+3.5,18+3.5,1]);
    translate([2,2,0]) cube([53-1,18-2+1,2]);
}
relay2(0,0);

