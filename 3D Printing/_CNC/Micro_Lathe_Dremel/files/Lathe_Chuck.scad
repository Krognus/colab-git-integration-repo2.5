$fn=50;
use <../Libraries/nuts and bolts v1.95.scad>

difference (){
union(){
translate([-10,-15,5]) cube([20,90,30]);            //Stock stand

difference(){
translate([-10,-15,0]) cube([80,90,5]);             //Wall
translate([10,-15,0]) linear_extrude(height = 5) {
polygon(points=[[0,0],[60,0],[60,25]], paths=[[0,1,2]]);
}
translate([10,75,0]) linear_extrude(height = 5) {
polygon(points=[[0,0],[60,0],[60,-25]], paths=[[0,1,2]]);
}
}
translate([10,10,35]) rotate ([-90,0,0]) linear_extrude(height = 5) {
polygon(points=[[0,0],[60,30],[0,30]], paths=[[0,1,2]]);
}
translate([10,45,35]) rotate ([-90,0,0]) linear_extrude(height = 5) {
polygon(points=[[0,0],[60,30],[0,30]], paths=[[0,1,2]]);
}

translate([50,30,0]) cylinder (d=80, h=0.5);        //Printing suppport

translate([50,30,4.5]) union(){        //Dremel Nut
hex_nut (1/2, 3/4, 1, 1/128, 32, 1, "imperial", 12);
difference(){
    cylinder (d=30,h=12.7);
    cylinder (d=23,h=12.7);
}}
}

color("Red") union(){
cylinder (d=8.2, h=40);                             //Lead rod
translate([0,0,33]) cylinder (d=10, h=2);           //Plug recess
translate([0,30,0]) cylinder (d=6.2, h=40);         //Lead screw
translate([0,30,19.5]) cylinder (d=12, h=15.5);     //Nut hole
translate([0,30,33]) cylinder (d=14, h=2);          //Plug recess
translate([0,60,0]) cylinder (d=8.2, h=40);         //Lead rod
translate([0,60,33]) cylinder (d=10, h=2);          //Plug recess
translate([50,30,0]) cylinder(r=10,h=5);            //Chuck hole
    

 
translate ([0,-8,25]) union(){              //Nut slot Chuck front
translate ([0,-1.3,-2.9]) cube([20,2.6,5.8]);
translate ([0,1.3,0]) rotate ([90,0,0]) cylinder (d=6.7, h=2.6, $fn=6);
translate ([0,7,0]) rotate ([90,0,0]) cylinder (d=3.2, h=14, $fn=40);
}
translate ([0,68,25]) union(){              //Nut slot Chuck rear
translate ([0,-1.3,-2.9]) cube([20,2.6,5.8]);
translate ([0,1.3,0]) rotate ([90,0,0]) cylinder (d=6.7, h=2.6, $fn=6);
translate ([0,7,0]) rotate ([90,0,0]) cylinder (d=3.2, h=14, $fn=40);
}
}
}

