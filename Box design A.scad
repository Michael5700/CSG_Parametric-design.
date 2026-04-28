// Parameters
box_length = 60;
box_width  = 40;
box_height = 30;
wall_thickness = 2;
// Outer box
difference() {
    cube([box_length, box_width, box_height], center=false);
    translate([wall_thickness, wall_thickness, wall_thickness])
        cube([box_length - 2*wall_thickness,
              box_width - 2*wall_thickness,
              box_height], center=false);
}
// Lid
translate([0,0,box_height])
    cube([box_length, box_width, wall_thickness], center=false);
// Side handles
handle_radius = 3;
handle_length = 20;

translate([-handle_length/2, box_width/2 + handle_radius, box_height/2])
    rotate([90,0,0]) cylinder(r=handle_radius, h=handle_length, center=true);

translate([-handle_length/2, -handle_radius, box_height/2])
    rotate([90,0,0]) cylinder(r=handle_radius, h=handle_length, center=true);
// Rounded box
minkowski() {
    cube([box_length, box_width, box_height]);
    sphere(r=2);  // radius controls roundness
}
// Rounded box with handles
difference() {
    minkowski() {
        cube([box_length, box_width, box_height]);
        sphere(r=2);
    }
    translate([wall_thickness, wall_thickness, wall_thickness])
        cube([box_length - 2*wall_thickness,
              box_width - 2*wall_thickness,
              box_height], center=false);
}

// Add handles
translate([-handle_length/2, box_width/2 + handle_radius, box_height/2])
    rotate([90,0,0]) cylinder(r=handle_radius, h=handle_length, center=true);

translate([-handle_length/2, -handle_radius, box_height/2])
    rotate([90,0,0]) cylinder(r=handle_radius, h=handle_length, center=true);