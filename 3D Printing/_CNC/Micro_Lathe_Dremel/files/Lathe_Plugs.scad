$fn=50;

cylinder (d=12, h=10);                          //Plug Lead screw
cylinder (d=13.8, h=1.8);
translate([-15,0,0]) cylinder (d=9.8, h=1.8);   //Plugs Lead rods
translate([15,0,0]) cylinder (d=9.8, h=1.8);
