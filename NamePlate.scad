




//What is visible. true/false

showPlate = true;
showLetters = true;




//LETTERING DIMENSIONS



//Name

firstname = "First";
lastname = "Last";


//Letter height from top of letter to bottom

lettersize = 15.4;


//The distance the letters will extrude

letterthickness = 3.5;


//Distance between letters. 1mm causes letters to merge so I used a little more than 1mm

letterspacing = 1.05;


//Font and Style. Possible styles are Bold, Italic

font = "Georgia:style= Bold";


//The distance of the first name from the top of the plate

firstnamedistancefromtop = 18;


//The distance of the last name from the bottom of the plate

lastnamedistancefrombottom = 15;


//Distance of the names from the left side of the plate

nameyoffset = 16;





//PLATE DIMENSIONS



//Length of plate from left to right

platewidth = 75.9;


//Length of plate from top to bottom

platelength = 177;


//Thickness of plate

platethickness = 6;












  if (showPlate == true)
      {
cube([platewidth,platelength,platethickness]);
          }

firstlast = [
[firstname, firstnamedistancefromtop, "top", 0],
[lastname, platewidth, "bottom", lastnamedistancefrombottom]]
;

 if (showLetters == true) {

for (a = firstlast) {
translate([a[1] - a[3], nameyoffset, platethickness])
{
    rotate([0, 0, 90])
    {

linear_extrude(height=letterthickness)
text(text = a[0],size = lettersize, spacing = letterspacing, font = font, valign = a[2]);
    }        
  }
 }
}
