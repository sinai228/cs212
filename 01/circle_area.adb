-- circle_area.adb computes the area of a circle.
--
-- Input: The radius of the circle.
-- Precondition: The radius is a positive number.
-- Output: The area of the circle.
--
-- Begun by: Prof. Adams, CS 214 at Calvin College.
-- Completed by: Sinai Park (sp46)
-- Date: Feb 6 2020
----------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Float_Text_IO;

procedure circle_area is

   radius, area : float; 

   -- function circleArea computes a circle's area, given its radius
   -- Parameter: r, a float
   -- Precondition: r >= 0.0
   -- Return: the area of the circle whose radius is r
   ----------------------------------------------------
   function circleArea(r: in float) return float is 
      PI : constant := 3.1415927;                    --set pi as constant value
   begin                                             --function begins
      return PI * r ** 2;                            --computes area by pi and the radius 
   end circleArea;                                   --function ends

begin                           
   New_Line;                                         --entering a new line
   Put_Line("To compute the area of a circle,");     --prints the statement in quotations
   Put("enter its radius: ");                        --allows user to enter in value
   Get(radius);                                      --computes radius from function above

   area := circleArea(radius);                       --stores the circleArea using radius as parameter

   New_Line;                                          --entering a new line
   Put("The circle's area is ");                      --prints the statement in quotations
   Put(area);                                         --prints the value of computed area next
   New_Line; New_Line;                                --skips onto the next two lines

   Put("The circle's area is ");                      --prints the intro statement to print out value of area
   Put(area, 1, 15, 0);                               --prints out area value, as a limited decimal value digits
   New_Line; New_Line;                                --enters into the next two lines
end circle_area;

--Ada's Put_Line's parameter only allows for the single parameter, or string, to be printed out
--while the Put function has many parameters on which it has control on.
--The put function has many specifications and also allows the user to control the limits of the real number's digit 
--while it is being printed out 

