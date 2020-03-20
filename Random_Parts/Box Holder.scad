Wall=6;
Thickness=1.5;
Height=20*2+18+3.5;
Length=145.5;
$fs = 0.1;

//Relays
module relay(xx, yy) {
    translate([xx,yy,0]) difference () {cube([4.5,4.5,9]); translate([1.5,1.5,5]) cube([3,3,2]);}
    translate([xx+53-1,yy,0]) difference () {cube([4.5,4.5,9]); translate([0,1.5,5]) cube([3,3,2]);}
    translate([xx,yy+18-1,0]) difference () {cube([4.5,4.5,9]); translate([1.5,0,5]) cube([3,3,2]);}
    translate([xx+53-1,yy+18-1,0]) difference () {cube([4.5,4.5,9]); translate([0,0,5]) cube([3,3,2]);}
    translate([xx,yy,0]) difference () {cube([53+3.5,18+3.5,1.5]); translate([Wall,Wall,0]) cube([53+4.5-Wall*2,18+1.5-Wall*2,1.5]);}
}

difference () {
    union () {
        relay(0,15+20*2);
        relay(0,15+20);
        relay(0,15+0);
    }
    #translate([Wall,22,0]) cube([53-7.5,18*2.7,Thickness]);   
}

module pi(xx, yy) {
    translate([xx,yy,0]) difference () {cube([4.5,4.5,9]); translate([1.5,1.5,5]) cube([3,3,2]);}
    translate([xx+56,yy,0]) difference () {cube([4.5,4.5,9]); translate([0,1.5,5]) cube([3,3,2]);}
    translate([xx,yy+61.5-1.5,0]) difference () {cube([4.5,3,9]); translate([1.5,0,5]) cube([3,5,2]);}
    translate([xx+56,yy+61.5-1.5,0]) difference () {cube([4.5,3,9]); translate([0,0,5]) cube([3,5,2]);}
    translate([xx,yy,0]) difference () {cube([56+4.5,61.5+1.5,1.5]); translate([Wall,Wall,0]) cube([56+4.5-Wall*2,61.5+1.5-Wall*2,1.5]);}
}

pi(85,0);

//Join Them!
translate([52, 15, 0]) cube([35,Wall,Thickness]);
translate([52, 57, 0]) cube([35,Wall,Thickness]);

//Screws
translate([-10, 66.5, 0]) difference () {cube([10,10,Thickness]); translate([5,5,0]) cylinder(1.5,1.5,Thickness);}
translate([-10, 15, 0]) difference () {cube([10,10,Thickness]); translate([5,5,0]) cylinder(1.5,1.5,Thickness);}
translate([145.5, 53, 0]) difference () {cube([10,10,Thickness]); translate([5,5,0]) cylinder(1.5,1.5,Thickness);}
translate([145.5, 0, 0]) difference () {cube([10,10,Thickness]); translate([5,5,0]) cylinder(1.5,1.5,Thickness);}