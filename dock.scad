use <base_shapes/backrest.scad>
use <base_shapes/solid_dock_base.scad>


length = 60;
width = 60;
height = 10;
lip = height; // There must always be a lip in the front of things here

difference() {
  union() {
    solid_dock_base(length, width, height);
    translate([0, lip, height]) {
      backrest(length, width/3, width/3);
    }
  }
  // bottom cable channel
  union() {
    translate([length/2, lip, height*(1/3)]) {
      rotate([-90, 0, 0]) {
        cylinder(h = length - lip, r = 2.5);
      }
    }
    translate([(length/2) - 1.5, lip, 0]) cube([3, width - lip, 5]);
  }
}
