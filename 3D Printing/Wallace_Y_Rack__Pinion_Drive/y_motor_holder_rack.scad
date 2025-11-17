include <wallace.scad>;



!y_motor_holder_rack();

module y_motor_holder_rack() difference() {
	linear_extrude(height = 20, convexity = 5) difference() {
		square([yz_motor_distance + motor_casing - motor_screw_spacing + 9, motor_casing + rod_size * 4], center = true);
		for(end = [0]) {
			for(x = [1, -1])     for(y     = [1, -1]) translate([x     * motor_screw_spacing / 2, y    * motor_screw_spacing / 2, 0]) circle(m3_size * da6, $fn = 6);
			translate([end * (yz_motor_distance + motor_casing) / 2, 0, 0]) circle(motor_screw_spacing / 2.1);
		}
	}
	for(end = [0]) translate([end * (yz_motor_distance + motor_casing) / 2, 0, 3]) linear_extrude(height = end_height, convexity = 5) square(motor_casing, center = true);
	for(side = [1, -1]) translate([0, side * (motor_casing / 2 + rod_size), rod_size / 2 + bearing_size / 2]) rotate([90, 180 / 8, 90]) {
		cylinder(r = rod_size * da8, h = yz_motor_distance + motor_casing + 20, center = true, $fn = 8);
		%translate([0, 0, -70]) cylinder(r = rod_size * da8, h = 200, center = true, $fn = 8);
	}

}
