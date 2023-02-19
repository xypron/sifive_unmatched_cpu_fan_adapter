$fn = 180;

module fan25() {
    translate([0, 0, 18.2]) {
        difference() {
            cube([25, 25, 10.4], center = true);
            union() {
                cylinder(h = 20, r = 12, center = true);
                translate([10, 10, 0])
                    cylinder(h = 20, r = 1.375, center = true);
                translate([10, -10, 0])
                    cylinder(h = 20, r = 1.375, center = true);
                translate([-10, 10, 0])
                    cylinder(h = 20, r = 1.375, center = true);
                translate([-10, -10, 0])
                    cylinder(h = 20, r = 1.375, center = true);
            }
        }
    }
}

module fan40() {
    translate([0, 0, -5]) {
        difference() {
            cube([40, 40, 10], center = true);
            union() {
                cylinder(h = 20, r = 19, center = true);
                translate([16, 16, 0])
                    cylinder(h = 20, r = 1.65, center = true);
                translate([16, -16, 0])
                    cylinder(h = 20, r = 1.65, center = true);
                translate([-16, 16, 0])
                    cylinder(h = 20, r = 1.65, center = true);
                translate([-16, -16, 0])
                    cylinder(h = 20, r = 1.65, center = true);
            }
        }
    }
}

module adapter() {
    difference() {
        union() {
            translate([0, 0, 1])
                cube([25, 25, 2], center = true);

            difference() {
                multmatrix([
                        [1, 0, 0, 0],
                        [0, 1, 0, 16.25],
                        [0, 8.4 / 7.5, 1, 5.2],
                        [0, 0, 0, 1],
                        ]){
                    cube([40, 7.5, 2], center = true);
                }
                union() {
                    multmatrix([
                            [1, -5.5 / 7.5, 0, -22.25],
                            [0, 1, 0, 16.25],
                            [0, 0, 1, 0],
                            [0, 0, 0, 1],
                            ]){
                        cube([10, 9, 50], center= true);
                    }

                    multmatrix([
                            [1, 5.5 / 7.5, 0, 22.25],
                            [0, 1, 0, 16.25],
                            [0, 0, 1, 0],
                            [0, 0, 0, 1],
                            ]){
                        cube([10, 9, 50], center= true);
                    }
                }
            }

            multmatrix([
                    [1, 5.5 / 7.5, 0, 16.25],
                    [0, 1, 0, 16.25],
                    [0, 8.4 / 7.5, 1, -13.8],
                    [0, 0, 0, 1],
                    ]){
                cube([2, 7.5, 38], center= true);
            }

            multmatrix([
                    [1, -5.5 / 7.5, 0, -16.25],
                    [0, 1, 0, 16.25],
                    [0, 8.4 / 7.5, 1, -13.8],
                    [0, 0, 0, 1],
                    ]){
                cube([2, 7.5, 38], center= true);
            }


            translate([16, 18, 6.4])
                rotate([90, 0, 0])
                    cylinder(h = 4, r = 4, center = true);
            translate([-16, 18, 6.4])
                rotate([90, 0, 0])
                cylinder(h = 4, r = 4, center = true);

            translate([-10, 10, 5.2])
                cylinder(h = 10.4, r = 2.5, center = true);
            translate([10, -10., 5.2])
                cylinder(h = 10.4, r = 2.5, center = true);



        }
        union() {
            translate([-16, 18, 6.4])
                rotate([90, 0, 0])
                    cylinder(h = 20, r = 1.65, center = true);
            translate([16, 18, 6.4])
                rotate([90, 0, 0])
                    cylinder(h = 20, r = 1.65, center = true);

            translate([0, 0, -37.6])
                cube([60, 60, 20], center = true);

            translate([-10, 10, 5])
                cylinder(h = 20, r = 1.5, center = true);
            translate([10, -10, 5])
                cylinder(h = 20, r = 1.5, center = true);
        }
    }
}

color(c = [0.5, 0.5, 0.5, 1])
    rotate([-90, 0, 0])
        adapter();
