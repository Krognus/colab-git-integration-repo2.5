TotalLength = 125;
TotalWidth = 100;

GuideRodBarWidth = 20;

difference(){
union(){
difference(){
cube([TotalLength,TotalWidth,10], center = true);

//Holes for Bolts
translate([.5*TotalLength - 15,35,0]){
cylinder(h=50, r=1.85, center=true,$fn=100);
}

translate([.5*TotalLength - 55,35,0]){
cylinder(h=50, r=1.85, center=true,$fn=100);
}

translate([.5*TotalLength - 15,-35,0]){
cylinder(h=50, r=1.85, center=true,$fn=100);
}

translate([.5*TotalLength - 55,-35,0]){
cylinder(h=50, r=1.85, center=true,$fn=100);
}

//Nut Cap Holes
translate([.5*TotalLength - 15,35,3.15]){
cylinder(h=3.8, r=5.9/2, center=true,$fn=100);
}

translate([.5*TotalLength - 55,35,3.15]){
cylinder(h=3.8, r=5.9/2, center=true,$fn=100);
}

translate([.5*TotalLength - 15,-35,3.15]){
cylinder(h=3.8, r=5.9/2, center=true,$fn=100);
}

translate([.5*TotalLength - 55,-35,3.15]){
cylinder(h=3.8, r=5.9/2, center=true,$fn=100);
}

}

//Guide Rod Block
translate([-TotalLength*.5 + GuideRodBarWidth*.5,0,17.5]){
cube([GuideRodBarWidth,100,25], center = true);
}
}

//Guide Rod Holes
translate([-TotalLength*.5+15,25,15]){
    rotate([0,90,0])
        cylinder(h=20, r=11.35/2, center=true,$fn=100);
}

translate([-TotalLength*.5+15,-25,15]){
    rotate([0,90,0])
        cylinder(h=20, r=11.35/2, center=true,$fn=100);
}

// Threaded Rod Hole
translate([-TotalLength*.5,0,15]){
    rotate([0,90,0])
        cylinder(h=50, r=7.2/2, center=true,$fn=100);
}

}



