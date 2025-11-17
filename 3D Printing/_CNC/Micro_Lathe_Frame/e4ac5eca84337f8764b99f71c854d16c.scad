union(){
difference(){

union(){

difference(){

difference(){

difference(){
union(){
cube([100,100,20], center = true);
    

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
cylinder(h=110,r=13.25/2,$fn=100);
}

translate([-40,55,-7.5]){
rotate([90,0,0])
cylinder(h=110,r=13.25/2,$fn=100);
}

//Threaded Rod Hole
translate([0,55,-7.5]){
rotate([90,0,0])
cylinder(h=110,r=4,$fn=100);
}


}



}




}



// Making the neck of the tailstock
difference(){
union(){
translate([0,25,92.5/2])
cube([20,50,80], center=true);


translate([0,25,92.5]){
rotate([90,0,0])
cylinder(r=15, h=50, center=true,$fn=100);
}
}

translate([0,25,92.5]){
rotate([90,0,0])
cylinder(r=9.3/2, h=101, center=true,$fn=100);
}
}

}

//Nut slot for 3/8 square nut
translate([0,25,92.5]){
cube([40,8.75,16], center = true);
}

// Hole for Set Screw
translate([-40,0,0]){
    cylinder(h=21,r=3,center=true,$fn=100);
}

translate([40,0,0]){
    cylinder(h=21,r=3,center=true,$fn=100);
}
translate([40,0,3]){
    cube([11.35,11.35,5.9],center=true);
}
translate([45,0,3]){
    cube([11.35,11.35,5.9],center=true);
}
translate([-40,0,3]){
    cube([11.35,11.35,5.9],center=true);
}
translate([-45,0,3]){
    cube([11.35,11.35,5.9],center=true);
}

}

translate([0,200,30]){

difference(){
translate([0,-200,0]){
    rotate([0,-90,])
    cylinder(r=45,h=20,center=true,$fn=3);
}
translate([0,-175,0]){
    cube([50,50,300], center=true);
}

}
}

}


