# CRC Office Nameplates

## Project Description

The purpose of this project was to create a way to simply and quickly create nameplates for use around the CRC Office.


## Instructions


### How to modify parameters
After opening the file in OpenSCAD, modify the parameters where they are described. 
* Regarding the text, you can change the name, font, style, size, spacing, and distance between the letters and the top (first name), left, and bottom (last name) of the plate.
* Regarding the plate, you can change the length, width, and height.
* Notes are written to instruct what each element can be changed to and does.


### How to print multiple colors using PrusaSlicer
In order to print multiple colors, the letter file and plate file must be seperate. To do this, you must
1. Change showPlate to = true
2. Change showLetters to = false
    * This should make it so only the plate is visible.
3. Render the file by using f6 or the render button in OpenSCAD
4. Save the file as an .stl file
5. Change showPlate to = false
6. Change showLetters to = true
    * This should make it so only the letters are visible.
7. Render and save as an .stl file

Now that you have files containing only letters and only the plate, it is time to use PrusaSlicer.

1. First, make sure that the printer is set to have multiple colors.
2. Then, add the plate file onto the bed. You can press A to automatically arrange the plate and wipe tower.
3. Right click on the plate and choose "Add part" from the drop-down menu
4. Select your letters file
    * The letters should automatically be placed on the plate. If they don't, try pressing A.
5. Next, select a different color for the letters and plate. I used Generic PLA with 15% infill on the 0.20mm Speed setting.
6. Slice and print
