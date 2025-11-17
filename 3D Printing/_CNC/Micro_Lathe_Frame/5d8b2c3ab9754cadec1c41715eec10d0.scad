TotalLength = 80;
difference(){
union(){
translate([0,0,10])
cube([59,110,10], center=true);
cube([59,80,10], center=true);
}

translate([20,0,0]){
rotate([90,0,0])
cylinder(r=1.5, h=200, center=true, $fn=200);
}
translate([-20,0,0]){
rotate([90,0,0])
cylinder(r=1.5, h=200, center=true, $fn=200);
}


translate([20,0,0])
cube([7.5,60,80], center=true);

translate([-20,0,0])
cube([7.5,60,80], center=true);

cube([10,60,80], center=true);
}