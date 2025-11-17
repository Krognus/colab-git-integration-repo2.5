union(){

difference(){

difference(){

difference(){
union(){
cube([150,100,15], center = true);
    

// Main Guide Rod Holes
translate([40,50,-7.5]){
rotate([90,0,0])
cylinder(h=100,r=11,$fn=100);
}

translate([-40,50,-7.5]){
rotate([90,0,0])
cylinder(h=100,r=11,$fn=100);
}

//Threaded Rod Hole
translate([0,50,-7.5]){
rotate([90,0,0])
cylinder(h=100,r=7.5,$fn=100);
}

}
translate([40,55,-7.5]){
rotate([90,0,0])
cylinder(h=110,r=13.05/2,$fn=100);
}

translate([-40,55,-7.5]){
rotate([90,0,0])
cylinder(h=110,r=13.05/2,$fn=100);
}

//Threaded Rod Hole
translate([0,55,-7.5]){
rotate([90,0,0])
cylinder(h=110,r=3.5,$fn=100);
}


}

//Holes for bolts to cross slide plateform
translate([20,35,0]){
cylinder(h=50, r=1.85, center=true,$fn=100);
}

translate([20,-35,0]){
cylinder(h=50, r=1.85, center=true,$fn=100);
}

translate([-20,35,0]){
cylinder(h=50, r=1.85, center=true,$fn=100);
}

translate([-20,-35,0]){
cylinder(h=50, r=1.85, center=true,$fn=100);
}

translate([60,35,0]){
cylinder(h=50, r=1.85, center=true,$fn=100);
}

translate([60,-35,0]){
cylinder(h=50, r=1.85, center=true,$fn=100);
}

translate([-60,35,0]){
cylinder(h=50, r=1.85, center=true,$fn=100);
}

translate([-60,-35,0]){
cylinder(h=50, r=1.85, center=true,$fn=100);
}

///// Nut Holes

translate([20,35,-7+.7]){
cube([8.1,8.1,2.5], center=true);
}

translate([20,-35,-7+.7]){
cube([8.1,8.1,2.5], center=true);
}

translate([60,35,-7+.7]){
cube([8.1,8.1,2.5], center=true);
}

translate([60,-35,-7+.7]){
cube([8.1,8.1,2.5], center=true);
}

//Other Side
translate([-20,35,-7+.7]){
cube([8.1,8.1,2.5], center=true);
}

translate([-20,-35,-7+.7]){
cube([8.1,8.1,2.5], center=true);
}

translate([-60,35,-7+.7]){
cube([8.1,8.1,2.5], center=true);
}

translate([-60,-35,-7+.7]){
cube([8.1,8.1,2.5], center=true);
}


}



//Nuts Slot for Threaded Rod
translate([0,0,-7]){
cube([11.3,5.6,11.3], center = true);
}


translate([0,0,-10]){
cube([11.3,5.6,11.3], center = true);
}
//for(n = [1 : 3])
//{
//    rotate([0, 0, n * 60])
//    {
//        translate([0,0,40])
//        cube([10,6,5],center = true);
//    }
//}
}

//Divide Bar
translate([0,0,12.5]){
   cube([10,100,10], center = true); 
}

}