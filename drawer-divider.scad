include <wall.scad>;
include <cornerPin.scad>;

// Front wall
wall(100);

// Left wall
rotate([0, 0, 90])
translate([2.5, -2.5, 0])
wall(20);

// Bottom corner pin
rotate([0, 0, 90])
translate([0, -2.5, 0])
cornerPin();

// Top corner pin
translate([2.5, 5, 80])
rotate([0, 180, 90])
cornerPin();

// Back wall
translate([0, 20 + 2.5, 0])
wall(100);

// Bottom corner pin
rotate([0, 0, 90])
translate([20, -2.5, 0])
cornerPin();

// Top corner pin
translate([2.5, 20 + 5, 80])
rotate([0, 180, 90])
cornerPin();

// Right wall
rotate([0, 0, 90])
translate([2.5, -100, 0])
wall(20);

// Bottom corner pin
rotate([0, 0, 90])
translate([0, -100, 0])
cornerPin();

// Top corner pin
translate([100, 5, 80])
rotate([0, 180, 90])
cornerPin();

// Bottom corner pin
rotate([0, 0, 90])
translate([20, -100, 0])
cornerPin();

// Top corner pin
translate([100, 20 + 5, 80])
rotate([0, 180, 90])
cornerPin();
