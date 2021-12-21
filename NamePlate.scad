 

//What is visible
showPlate = true;
showLetters = true;



//Lettering Dimensions

firstname = "First";
lastname = "Last";
lettersize = 15.4;
letterthickness = 3.5;
letterspacing = 1.05;
distancefrombottom = 0;
font = "Georgia:style= Bold";
firstnamedistancefromtop = 18;
lastnamedistancefrombottom = 15;
nameyoffset = 16;



//Plate Dimensions

platewidth = 75.9;
platelength = 177;
platethickness = 6;










  if (showPlate == true)
      {
cube([platewidth,platelength,platethickness]);
  }





firstlastspacing = distancefrombottom;

firstlast = [
[firstname, 0, firstnamedistancefromtop, "top", 0],
[lastname, distancefrombottom, platewidth, "bottom", lastnamedistancefrombottom]]
;

 if (showLetters == true) {

for (a = firstlast) {
translate([a[1] + a[2] - a[4], nameyoffset, platethickness])
{
    rotate([0, 0, 90])
    {

linear_extrude(height=letterthickness)
text(text = a[0],size = lettersize, spacing = letterspacing, font = font, valign = a[3]);
    }        
  }
 }
}
