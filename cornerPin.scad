module cornerPin(thickness = 2.5, pinSize = 1, pinDepth = 2) {
  cube([thickness * 2, thickness, thickness]);

  pinOffset = (thickness - pinSize) / 2;

  translate([pinOffset, pinOffset, thickness])
  cube([pinSize, pinSize, pinDepth]);

  translate([thickness + pinOffset, pinOffset, thickness])
  cube([pinSize, pinSize, pinDepth]);
}
