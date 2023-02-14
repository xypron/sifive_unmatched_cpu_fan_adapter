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
                difference() {
                    union() {
                        translate([0, 0, 12.5])
                            cube([25, 25, 1], center = true);
                        translate([0, 0, 6.5])
                            cylinder(h = 13, r1 = 21, r2 = 14, center = true);
                        translate([16, 16, 2])
                            cylinder(h = 4, r = 4, center = true);
                        translate([-16, -16, 2])
                            cylinder(h = 4, r = 4, center = true);
                    }
                    translate([0, 0, 6.5])
                        cylinder(h = 39, r1 = 27, r2 = 4.5, center = true);
                }

            translate([10, 10, 7.8])
                cylinder(h = 10.4, r = 2.5, center = true);
            translate([-10, -10., 7.8])
                cylinder(h = 10.4, r = 2.5, center = true);

       

        }
        union() {
            translate([16, 16, 5])
                cylinder(h = 20, r = 1.65, center = true);
            translate([-16, -16, 5])
                cylinder(h = 20, r = 1.65, center = true);

            translate([10, 10, 5])
                cylinder(h = 20, r = 1.5, center = true);
            translate([-10, -10, 5])
                cylinder(h = 20, r = 1.5, center = true);
        }
    }
}

/*
color(c = [0.7, 0.7, 0.7, .3])
    fan25();
color(c = [0.7, 0.7, 0.7, .3])
    fan40();
adapter();
*/
color(c = [0.5, 0.5, 0.5, 1])
    rotate([180, 0, 0])
        adapter();
