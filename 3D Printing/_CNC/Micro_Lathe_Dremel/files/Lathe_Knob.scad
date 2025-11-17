$fn=50;
use </Applications/OpenSCAD.app/Contents/Resources/examples/Advanced/children.scad>

difference (){                                              //Handle
union(){
cylinder (d=16, h=12);
translate([0,0,12])sphere (d=16);
}
union(){
make_ring_of(radius = 9, count = 6) cylinder(r=3, h=20);    //Groves
cylinder (d=6, h=12);                                       //Inner hole
translate([-5,-0.5,0])cube([10,1,12]);                      //Inner cut
}
}
