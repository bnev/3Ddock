module bottom_solid(size=60, height=10, roundness = 8) {
  union()
  {
    for(x=[-1,+1])
      for(y=[-1,+1])
        translate([x*size/2,y*size/2,0])
          cylinder(r=roundness,h=height, center=true);
    cube([size, size+2*roundness, height], center=true);
    cube([size + 2*roundness, size, height], center=true);
  }
}
