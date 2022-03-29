module wall(length, height = 80, thickness = 2.5, pinSize = 1, pinDepth = 2, pinPlay = .1) {
  difference() {
    cube([length, thickness, height]);

    pinSize = pinSize + pinPlay;
    pinOffset = (thickness - pinSize) / 2;

    // Bottom-left cut-out
    translate([-1, -1, -1])
    cube([thickness + 1, thickness + 2, thickness + 1]);

    // Bottom-left pin
    translate([pinOffset, pinOffset, thickness - 1])
    cube([pinSize, pinSize, pinDepth + 1]);

    // Bottom-right cut-out
    translate([length - thickness, -1, -1])
    cube([thickness + 1, thickness + 2, thickness + 1]);

    // Bottom-right pin
    translate([length - thickness + pinOffset, pinOffset, thickness - 1])
    cube([pinSize, pinSize, pinDepth + 1]);

    // Top-left cut-out
    translate([-1, -1, height - thickness])
    cube([thickness + 1, thickness + 2, thickness + 1]);

    // Top-left pin
    translate([pinOffset, pinOffset, height - thickness - pinDepth])
    cube([pinSize, pinSize, pinDepth + 1]);

    // Top-right cut-out
    translate([length - thickness, -1, height - thickness])
    cube([thickness + 1, thickness + 2, thickness + 1]);

    // Top-right pin
    translate([length - thickness + pinOffset, pinOffset, height - thickness - pinDepth])
    cube([pinSize, pinSize, pinDepth + 1]);
  }
}
