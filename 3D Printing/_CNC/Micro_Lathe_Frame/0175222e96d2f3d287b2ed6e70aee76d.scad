mainbearinghole_radius = 15;
guiderod_hole_radius = 13.05/2;
tailstock_thread_hole_radius = 3.5;

bodyheight = 150;
body_support_notch_height = bodyheight-10;
basewidth = 150;
topwidth = 40;
notchwidth = topwidth-10;
depth = 15;
tablength = 4*depth;

Mount_Tab_Width= 30;
difference(){
rotate([90,0,90]){ 
   
difference(){ 
union(){
translate([basewidth/2-35,20,-depth/2]){
cylinder(h=5,r=guiderod_hole_radius);
}

translate([-(basewidth/2-35),20,-depth/2]){
cylinder(h=5,r=guiderod_hole_radius);
}

//Main shape of the body
difference(){
union(){
difference(){
linear_extrude(height = depth, scale = 1, center=true){
    polygon( points=[[basewidth/2,0],[-basewidth/2,0],[-topwidth,bodyheight],[-notchwidth,bodyheight],[-30,body_support_notch_height],[notchwidth,body_support_notch_height],[notchwidth,bodyheight],[topwidth,bodyheight]]);
}



//Guide Rod Holes
translate([basewidth/2-35,20,-depth]){
cylinder(h=depth*2,r=guiderod_hole_radius);
}

translate([-(basewidth/2-35),20,-depth]){
cylinder(h=depth*2,r=guiderod_hole_radius);
}

//Bearing Hole

translate([0,bodyheight-70,-depth]){
cylinder(h=depth*2,r=mainbearinghole_radius);
}

// Hole for Threaded Rod

translate([0,20,-depth]){
    cylinder(h = depth*2, r=tailstock_thread_hole_radius);
}



// Lockingholes for Top Piece
translate([notchwidth-10,body_support_notch_height-5,-depth]){
    cylinder(h = depth*2, r=2);
}

translate([-(notchwidth-10),body_support_notch_height-5,-depth]){
    cylinder(h = depth*2, r=2);
}
}

//Mounting Tabs
translate([(basewidth/2)-Mount_Tab_Width,0,(-tablength/2)]){
    linear_extrude(height = tablength)
               square([Mount_Tab_Width, 10]);
}

translate([(-basewidth/2),0,(-tablength/2)]){
    linear_extrude(height = tablength)
               square([Mount_Tab_Width, 10]);
}
}


//MountHoles
rotate([90,0,0]){
    translate([(basewidth/2-Mount_Tab_Width/2),(((tablength/2)-(depth/2))/2 + depth/2),0])
        cylinder(h=30,r=5, center=true,$fn=100);
}

rotate([90,0,0]){
    translate([(basewidth/2-Mount_Tab_Width/2),-(((tablength/2)-(depth/2))/2 + depth/2),0])
        cylinder(h=30,r=5, center=true,$fn=100);
}

rotate([90,0,0]){
    translate([(-(basewidth/2-Mount_Tab_Width/2)),(((tablength/2)-(depth/2))/2 + depth/2),0])
        cylinder(h=30,r=5, center=true,$fn=100);
}

rotate([90,0,0]){
    translate([(-(basewidth/2-Mount_Tab_Width/2)),-(((tablength/2)-(depth/2))/2 + depth/2),0])
        cylinder(h=30,r=5, center=true,$fn=100);
}

}


//Rear Supports



  
}
// Literally Triangulating the Supports

}



}

translate([0,0,120])
cube([150,150,150], center=true);
 } 




