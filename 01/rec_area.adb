-- rec_area.adb computes the area of a rectangle.
--
-- Input: The width and height of the rect.
-- Precondition: The width and height is a positive number.
-- Output: The area of the rectangle.
--
-- Created by: Sinai Park (sp46)
-- Date:Feb 6 2020
----------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Float_Text_IO;

procedure rec_area is

   width, height, area : float; 

   -- function recArea computes a circle's area, given its radius
   -- Parameter: w, a float and a h, a float
   -- Precondition: w >= 0.0 h >= 0.0
   -- Return: the area of the circle whose width is w and height is h
   ----------------------------------------------------
   function recArea(w: in float; h: in float) return float is 
   begin
      return w * h;
   end recArea;

begin                           
   New_Line;
   Put_Line("To compute the area of a rectangle,");
   --user input for its width
   Put("enter its width: ");
   Get(width);
   
   --user input for its height
   Put("enter its height: ");
   Get(height);

   area := recArea(width, height);

   New_Line;
   Put("The rectangle's area is ");
   Put(area);
   New_Line; New_Line; 

   Put("The rectangle's area is ");
   Put(area, 1, 15, 0);
   New_Line; New_Line; 
end rec_area;
