$fn=50;

difference (){
union(){
 /*  
translate([-10,-15,0]) cube([20,90,30]);       //Cariage stand
translate([10,-15,0]) cube([37.5,5,30]);
translate([47.5,-12.5,0]) cylinder (d=5, h=30);
*/

translate([-10,-20,0]) cube([20,95,30]);       //Cariage stand alternative
translate([10,-15,0]) cube([20,5,30]);

}

color("Red") union(){
cylinder (d=8.2, h=40);                             //Lead rod
translate([0,30,0]) cylinder (d=6.2, h=40);         //Lead screw
translate([0,60,0]) cylinder (d=8.2, h=40);         //Lead rod
}
}

