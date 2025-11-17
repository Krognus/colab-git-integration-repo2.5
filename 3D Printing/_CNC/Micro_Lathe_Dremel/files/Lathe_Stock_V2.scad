$fn=50;

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

translate([50,30,5]) cylinder (d=30, h=5); //Stock hole

translate([-10,-20,7]) rotate([0,90,0]) cylinder (d=14, h=5); //Mounting flaps
translate([-10,-20,0]) cube([5,5,14]);
translate([-10,80,7]) rotate([0,90,0]) cylinder (d=14, h=5);
translate([-10,75,0]) cube([5,5,14]);
}

color("Red") union(){
cylinder (d=8.2, h=40);                             //Lead rod
translate([0,30,0]) cylinder (d=6.2, h=40);         //Lead screw
translate([0,60,0]) cylinder (d=8.2, h=40);         //Lead rod
translate([50,30,0]) cylinder(d=22.2,h=7);          //Stock hole
translate([50,30,0]) cylinder(d=13,h=10);

translate([-10,-20,7]) rotate([0,90,0]) cylinder (d=5, h=6);    //Mounting fholes
translate([-10,80,7]) rotate([0,90,0]) cylinder (d=5, h=6);
    
translate ([0,30,25]) union(){              //Lead screw Nut slot
translate ([0,-5.2,-1.8]) cube([20,10.4,3.6]);
translate ([0,0,-1.8])cylinder (d=12, h=3.6, $fn=6);
}
translate ([0,-8,25]) union(){              //Nut slot Stock front
translate ([0,-1.3,-2.9]) cube([20,2.6,5.8]);
translate ([0,1.3,0]) rotate ([90,0,0]) cylinder (d=6.7, h=2.6, $fn=6);
translate ([0,7,0]) rotate ([90,0,0]) cylinder (d=3.2, h=14, $fn=40);
}
translate ([0,68,25]) union(){              //Nut slot Stock rear
translate ([0,-1.3,-2.9]) cube([20,2.6,5.8]);
translate ([0,1.3,0]) rotate ([90,0,0]) cylinder (d=6.7, h=2.6, $fn=6);
translate ([0,7,0]) rotate ([90,0,0]) cylinder (d=3.2, h=14, $fn=40);
}
}
}
color("Blue") translate([50,30,0]) cylinder(d=15,h=6.9); //Stock hole support

