Script started on 2020-02-06 15:25:57-0500
]0;sp46@gold12: ~/214/labs/01[01;32msp46@gold12[00m:[01;34m~/214/labs/01[00m$ cat script      circle_area.adb
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

]0;sp46@gold12: ~/214/labs/01[01;32msp46@gold12[00m:[01;34m~/214/labs/01[00m$ gnatmake circle_area
x86_64-linux-gnu-gcc-7 -c circle_area.adb
x86_64-linux-gnu-gnatbind-7 -x circle_area.ali
x86_64-linux-gnu-gnatlink-7 circle_area.ali
]0;sp46@gold12: ~/214/labs/01[01;32msp46@gold12[00m:[01;34m~/214/labs/01[00m$ ./circle_area

To compute the area of a circle,
enter its radius: 1

The circle's area is  3.14159E+00

The circle's area is 3.141592741012573

]0;sp46@gold12: ~/214/labs/01[01;32msp46@gold12[00m:[01;34m~/214/labs/01[00m$ ./circle_area

To compute the area of a circle,
enter its radius: 2

The circle's area is  1.25664E+01

The circle's area is 12.566370964050293

]0;sp46@gold12: ~/214/labs/01[01;32msp46@gold12[00m:[01;34m~/214/labs/01[00m$ ./circle_area

To compute the area of a circle,
enter its radius: 2.5

The circle's area is  1.96350E+01

The circle's area is 19.634954452514648

]0;sp46@gold12: ~/214/labs/01[01;32msp46@gold12[00m:[01;34m~/214/labs/01[00m$ ./circle_area

To compute the area of a circle,
enter its radius: 2 4.99999

The circle's area is  7.85395E+01

The circle's area is 78.539505004882813

]0;sp46@gold12: ~/214/labs/01[01;32msp46@gold12[00m:[01;34m~/214/labs/01[00m$ exit

Script done on 2020-02-06 15:27:45-0500
