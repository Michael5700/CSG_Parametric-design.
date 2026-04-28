$fn = 100;


rotate([25, 0, 0])
   rotate([0, 0, 25])
   translate([150, 0, 0])
{
    cube([24, 80, 0.95], center = true);
    cylinder(d1 = 15, d2 = 29.95, h = 49, center = true);
}


hull()
{
    translate([0, 0, 40])
       cylinder(d = 40, h = 25.985);
    translate([60, 0, 40])cylinder(d = 40, h = 25.985);
    translate([60, 70, 40])cylinder(d = 40, h = 25.985);
}

minkowski()
{
   translate([-100, 0, 0])
    cube([50, 30, 22.5]);
    sphere(10);
  
}