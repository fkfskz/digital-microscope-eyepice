echo("Работа Горбуновой Арины!");
$fn = 128;
r_round_corner = 15;

//color("green")
//translate([0,0,15])
//cube([150,75.2,9],center=true);

smartphone();

module smartphone(){
    hull(){
        color("red")
        translate([150/2 - r_round_corner/2,75/2 - r_round_corner/2,0])
        cylinder(d=r_round_corner, h=9,center=true);
        
        mirror([1,0,0])
        color("red")
        translate([150/2 - r_round_corner/2,75/2 - r_round_corner/2,0])
        cylinder(d=r_round_corner, h=9,center=true);
        
        mirror([0,1,0])
        color("red")
        translate([150/2 - r_round_corner/2,75/2 - r_round_corner/2,0])
        cylinder(d=r_round_corner, h=9,center=true);
        
        mirror([1,0,0])
        mirror([0,1,0])
        color("red")
        translate([150/2 - r_round_corner/2,75/2 - r_round_corner/2,0])
        cylinder(d=r_round_corner, h=9,center=true);
    }
}

//ocular();
//translate([0,0,35/2+5/2])
//top();

module top(){
    difference(){
        cylinder(d=30, h=5, center=true);
        cylinder(d=23-0.5-3, h=15, center=true);
    }
}
module ocular(){
    difference(){
        cylinder(d=23-0.5, h = 35, center = true);
        cylinder(d=23-0.5-3, h = 40, center = true);
    }
}
