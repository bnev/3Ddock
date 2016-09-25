use <base_shapes/backrest.scad>
use <base_shapes/solid_dock_base.scad>


// We follow the rule of 3 around here
// To make it easier, just make all inputs divisible by 3.

length = 60;
width = 60;
height = 10;
lip = height; // There must always be a lip in the front of things here

union() {
  solid_dock_base(length, width, height);
  translate([0, lip, height]) backrest(length, width/3, width/3);
}
