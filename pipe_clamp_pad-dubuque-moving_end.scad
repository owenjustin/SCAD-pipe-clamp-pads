rotate([-90,0,180]) {
    // clamp pad surface
    linear_extrude(2)square([40,36], true);

    // clamp pad back w/cutouts
    translate([0,0,7])
    linear_extrude(2)
    difference(){
    square([40,36], true);
        polygon([
            [-11.5,16],[11.5,16],[16,-20],[-16,-20],[-11.5,16]
        ]);
    }


    //walls
    linear_extrude(9){
    translate([-21,0,0])
    square([2,36], true);
    translate([21,0,0])
    square([2,36], true);
    translate([0,19,0])
    square([44,2], true);
    }
}