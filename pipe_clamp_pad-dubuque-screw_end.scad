
rotate([-90,0,180]) {
    // clamp pad surface
    linear_extrude(2)square([40,36], true);


    // clamp pad back w/cutouts
    translate([0,0,7])
    linear_extrude(2)
    difference(){
        square([40,36], true);
            translate([0,5,0])
            square([7,17.75], true);
            translate([0,-11,0])
            square([19,15], true);
    }

    // walls
    linear_extrude(9){
        translate([-21,0,0])
            square([2,36], true);
        translate([21,0,0])
            square([2,36], true);
        translate([0,19,0])
            square([44,2], true);
    }
}