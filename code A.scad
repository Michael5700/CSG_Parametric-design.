$fn = 60;
pipeRadius = 15;
pipeHeight = 6;
baseHeight = 2;
roundedRad = 4; 


rotate_extrude()
translate([pipeRadius, 0, 0])
difference()
{ 
        
    square([roundedRad, roundedRad]);

    translate([roundedRad, roundedRad])
      circle(r = roundedRad);
}

pipeStructure();

module pipeStructure()
{
    cylinder (r = pipeRadius, h = pipeHeight);
    
    translate([ 0, 0, -baseHeight])
    linear_extrude(height = baseHeight)
    square([pipeRadius *2.5, pipeRadius *2.5], center = true );
}