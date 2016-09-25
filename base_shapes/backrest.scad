module backrest(x=60, y=20, z=20, angle = 75) {
  function angled_offset() = x * cos(angle);

  function cube_points()  = [
    // create bottom rectangle
    [0, 0, 0],
    [x, 0, 0],
    [x, y, 0],
    [0, y, 0],
    // create top rectangle
    [0, angled_offset(), z],
    [x, angled_offset(), z],
    [x, y, z],
    [0, y, z]
  ];
  
  // cube faces are static so don't need anything fancy
  function cube_faces() = [
    [0,1,2,3],  // bottom
    [4,5,1,0],  // front
    [7,6,5,4],  // top
    [5,6,2,1],  // right
    [6,7,3,2],  // back
    [7,4,0,3]   //left
  ];
  
  polyhedron(cube_points(), cube_faces());
}
