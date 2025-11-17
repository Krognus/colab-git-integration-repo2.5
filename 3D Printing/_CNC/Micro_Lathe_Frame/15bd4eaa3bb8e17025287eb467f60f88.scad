mainbearinghole_radius = 11.1;
guiderod_hole_radius = 12.7/2;
tailstock_thread_hole_radius = 3.5;

bodyheight = 175;
body_support_notch_height = bodyheight-10;
basewidth = 150;
topwidth = 40;
notchwidth = topwidth-10;
depth = 15;
tablength = 4*depth;

Mount_Tab_Width= 30;

rotate([90,0,90]){ 
   
difference(){ 
union(){
translate([40,20,-depth/2]){
cylinder(h=5,r=guiderod_hole_radius,$fn=100);
}

translate([-(40),20,-depth/2]){
cylinder(h=5,r=guiderod_hole_radius,$fn=100);
}

//Main shape of the body
difference(){
union(){
difference(){
linear_extrude(height = depth, scale = 1, center=true){
    polygon( points=[[basewidth/2,0],[-basewidth/2,0],[-topwidth,bodyheight],[-notchwidth,bodyheight],[-30,body_support_notch_height],[notchwidth,body_support_notch_height],[notchwidth,bodyheight],[topwidth,bodyheight]]);
}



//Guide Rod Holes
translate([40,20,-depth]){
cylinder(h=depth*2,r=guiderod_hole_radius,$fn=100);
}

translate([-(40),20,-depth]){
cylinder(h=depth*2,r=guiderod_hole_radius,$fn=100);
}

//Bearing Hole

translate([0,bodyheight-75,-depth]){
cylinder(h=depth*2-14.5,r=mainbearinghole_radius,$fn=100);
}

translate([0,bodyheight-75,-depth]){
cylinder(h=depth*2,r=mainbearinghole_radius-5,$fn=100);
}

// Hole for Threaded Rod

translate([0,20,-depth]){
    cylinder(h = depth*2, r=tailstock_thread_hole_radius,$fn=100);
}



// Lockingholes for Top Piece
translate([notchwidth-10,bodyheight-15,-depth]){
    cylinder(h = depth*2, r=1.85,$fn=100);
}

translate([-(notchwidth-10),bodyheight-15,-depth]){
    cylinder(h = depth*2, r=1.85,$fn=100);
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

translate([notchwidth+5,bodyheight/2,-depth/2+-(bodyheight/2)]){
        linear_extrude(height = bodyheight/2)
        square([10,bodyheight], center=true);

}

translate([-(notchwidth+5),bodyheight/2,-depth/2+-(bodyheight/2)]){
        linear_extrude(height = bodyheight/2)
        square([10,bodyheight], center=true);

}

  
}
// Literally Triangulating the Supports
translate([-(notchwidth+5),bodyheight/2,(-depth+-(bodyheight/2))/2])
      rotate([ atan((bodyheight/2)/bodyheight)+180,0,0])
    linear_extrude(height=500){
             square([12,bodyheight*2], center=true);
    }
    
translate([(notchwidth+5),bodyheight/2,(-depth+-(bodyheight/2))/2])
      rotate([ atan((bodyheight/2)/bodyheight)+180,0,0])
    linear_extrude(height=500){
             square([12,bodyheight*2], center=true);
    }
}

  

}




