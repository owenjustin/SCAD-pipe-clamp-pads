$fn=90;
$wall_thickness=2;
$pad_thickness=6.5;


//46 wide at top
//51 wide at bottom
//40 tall
rotate([-90,0,180]){
    // pad face
    linear_extrude($wall_thickness)
    polygon([
        [-23,0],[23,0],[25.5, -40],[-25.5, -40], [-23,0]
    ]);



    // pad rear w/cutouts
    translate([0,0,$pad_thickness])
    linear_extrude($wall_thickness)
    difference(){
        polygon([
            [-23,0],[23,0],[25.5, -40],[-25.5, -40], [-23,0]
        ]);
        square([12,70], true);
        translate([0,-57.5,0])
        circle(d=50);
    }

    //walls
    linear_extrude(8.5){
    polygon([
        [-25,0],[-23,0],[-25.5,-40],[-27.5,-40],[-25,0]
    ]);
    polygon([
        [25,0],[23,0],[25.5,-40],[27.5,-40],[25,0]
    ]);

    polygon([
        [-25,0],[-25,2],[25,2],[25,0],[-25,0]
    ]);
    }
}