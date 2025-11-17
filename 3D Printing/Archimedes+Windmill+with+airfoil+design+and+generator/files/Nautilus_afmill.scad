// Nautilus_mill.scad
// Author: Rudolf Huttary Berlin (2015) 
// not for commercial use 
//
use <naca4.scad>
use <Naca_sweep.scad>

// some parameters to play around
h = 110;      // height mm 
k = .75;       // slope of log spiral 
a = 1;      // factor of log spiral
d = 5;        // sweep angle
r = 1.1;        // radius of bore
R = 12;       // radius of foot
H = 1;       // height of foot
alpha = 42;   // windings angle
blades = 3;   // # blades

u_a = false;  // use Archimedes?
b = 5;      // factor of archimedes spiral
D = 6;        // bracket thickness
Exp = 2; 

end = 360;  // blade rotation angle



 Nautilus_mill_system();  // spiral in bracket
// Nautilus_mill_print(); // parts arranged for print
// magnet_ring();  // just the magnet ring
// Nautilus_mill_print(false); // just the spiral
//  rotate([90, 0, 0]) bracket(D); // just the bracket

//// cross sectional view
//difference()
//{
//Nautilus_mill_system();  // spiral in bracket
//  translate([-200, -100, 0])
//  cube([200, 200, 200]); 
//}


module Nautilus_afmill(foot = true)
{ 
  difference()
  {
    union()
    {  // compose the blades by doing a sweep
      for(j = [0:360/blades:359])
        rotate([0, 0, j])
      sweep(gen_dat()); 
      
      cylinder(r = 3*r, h = h, , $fn = 100); // axis
      if(foot)
        cylinder(r = R, h = H);  // foot   
    }
    cylinder(r = r, h = 3*h, $fn = 20, center = true); 
  }
  
  // generate airfoil data and do the sweep
  function gen_dat(w=0) = [for(i = powrange(20, 50, end, 2.2))
    let(term = end-60)
    let(R = u_a?ra(i):rl(i)) // spiral point
    let(l = sqrt(R*R + h*h)) // full length 
    let(g = atan(R/h))   // angle 
    let(b = h*sin(alpha)/sin(180-alpha-g))
    let(naca = [-i/2600, .5, i>term?.06-(i-term)/1050:.06])
    let(data = vec3D(airfoil_data(naca,N=101,L=b,open = true)))
    Rz_(i+w, Rx_(g, Ry_(-90, T_(-b-1,-1,0, data)))) ]; 
  
  // some nonlinear spacing 
  function powrange(start=60, step=15, end=360, p=1.4) = 
    [for (i = [pow(start, p): pow(step, p): pow(end, p)]) 
      pow(i,1/p)];  
}

module Nautilus_mill_print(all = true)
{
  if (all)
  translate([0, h/2, D/2])
  rotate([90, 0, 0])
  bracket(D); 
  difference()
  {
    Nautilus_afmill(); 
      translate([0, 0, h/2-5])
//      magnet_ring(false); 
      translate([0, 0, h/2-10]) // cut off tips
      difference()
      {
        cylinder(r=h/1.9, h = h/10.1, $fn = 100); 
        translate([0, 0, -.05])
        cylinder(r=h/2.1, h = h/10, $fn = 100); 
      }
  }
}



module Nautilus_mill_system()
{
  rotate([0, 0, -90])
  {
    translate([-h/2, 0, h/2+2*D])
    rotate([0, 90, 0])
    rotate([0, 0, -25])  // does it fit to the bow?
    color([0.0, 0.3, 1])Nautilus_afmill(foot = false); 
    color("red")bracket(D); 
  }
}

// log spiral
function rl(w) = a * exp(k*w/180*PI); 

// archimedes spiral
function ra(w) = b * pow(w/180*PI, Exp); 


module bracket(d = 4)
{ 
  translate([0, 0, h/2+2*d])
  rotate([90, 0, 0])
  difference()
  {
    ring(h/2+d/2, d/2); 
    rotate ([0, 90, 0])
    cylinder(r = r, h = 2*h, center = true, $fn = 20);     
  translate([0, h/2+1.5*d, 0])
    cube([h+4*d, h+2*d, 3*d], center = true); 
  }
  translate([h/5, 0, -d/2])
  difference()
  {
    cylinder (r=3, h=5.3*d, center = true, $fn = 40); 
    cylinder(r = r, h = 6*d, center = true, $fn = 40); 
  }
}

module ring(R=120, r=2)
{
  rotate_extrude($fn = 300)
  translate([R, 0, 0])
  circle(r); 
}

module magnet_ring(mags = true)
{ 
  r = h/2.2; 
  echo(r); 
  difference()
  {
  translate([0, 0, h/10])
  rotate_extrude($fn = 200)
  translate([r, 0, 0])
  rotate([0, 0, -87])
 polygon(points = airfoil_data([-.07, .3, .25], L = h/10)); 
    translate([0, 0, h/15])
    if (mags)
    magnets(r=r-.5, N = 50); 
  }
}

module magnets(r = 50, N = 50)
{
  for(i = [0:360/N:359])
    rotate([0, 0, i])
    translate([r, 0, 0])
    rotate([0, 90])
    cylinder(r=1.1,h=2, $fn = 20);   
}