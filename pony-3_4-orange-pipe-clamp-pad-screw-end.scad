

$fn=90;
$wall_thickness=2;
$pad_thickness=7.75;

rotate([-90,0,180]){
    // clamp pad surface
    linear_extrude($wall_thickness)
    square([46.5+($wall_thickness*2),40+$wall_thickness], true);

    // clamp pad rear w/cutouts
    translate([0,0,$pad_thickness]){
        linear_extrude($wall_thickness){
            difference() {
                square([50.5,42], true);
                square([10,50], true);
                translate([0,-15,0])
                square([21,20],true);
                translate([0,-4.5,0])
                circle(d=21);
            }}}
            
    //walls
    translate([-24.25,0,0])      
      linear_extrude($pad_thickness)  
        square([$wall_thickness, 42], true);
            
    translate([24.25,0,0])      
      linear_extrude($pad_thickness)  
        square([$wall_thickness, 42], true);
            
    translate([0,20,0])      
      linear_extrude($pad_thickness+2)  
        square([49,$wall_thickness], true);
}