// Solid base with rounded corners

module solid_dock_base(x = 60, y = 60, z = 10) {
  corner_radius = 3;
  $fn = 60;
  offset_x = x - corner_radius + 1;
  offset_y = y - corner_radius + 1; 
  offset_z = z - corner_radius;
  translate ([1, 1, 0])
    minkowski() {
      cube([offset_x, offset_y, offset_z]);
      cylinder(corner_radius);
    }
}
