$fa=1;
$fs=0.5;

// lightning cable head end
module lightning_head() {
  // 14mm tall including the 5mm tip
  // 6 mm wide
  // 4.5 mm thick
  hull() {
    cube([4, 4.5, 9], center=true);
    translate([1.5, 0, 0]) cylinder(r=2.25, h=9, center=true);
    translate([-1.5, 0, 0]) cylinder(r=2.25, h=9, center=true);
  }
}

// lightning head sleeve
module lightning_head_sleeve() {
  // sleeve width is 3mm, 7.5mm tall)
  cylinder(r=1.5, h=7.5, center=true);
}

module lightning_cable(length = 4, c=true) {
  // cable itself is 2.5
  cylinder(r=1.125, h=length, center=c);
}

module lightning_end() {
  translate([0, 0, 8.125]) lightning_head();
  lightning_head_sleeve();
  translate([0, 0, -4]) lightning_cable();
}

module lightning() {
  lightning_end();
  rotate([90, 0, 0]) translate ([0, -6.5, -1.125]) lightning_cable(80, false);
}

lightning();
