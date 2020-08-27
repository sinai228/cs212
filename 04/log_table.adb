-- log_table.adb computes a table of logarithms.
--
-- Input: start, stop, increment, three reals.
-- Precondition: increment is positive.
-- Output: A table of logarithms beginning with log(start),
--         ending with log(stop), with intervals of increment.
--
-- Begun by: Prof. Adams, for CS 214 at Calvin College.
-- Completed by: Sinai Park(sp46)
-- Date: Feb 27 2020
--------------------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO, Ada.Numerics.Elementary_Functions;
use  Ada.Text_IO, Ada.Float_Text_IO, Ada.Numerics.Elementary_Functions;

procedure log_table is

   Start, Stop, Increment : Float;

begin                                           -- Prompt for input
   Put_Line("To print a table of logarithms,");
   Put(" enter the start, stop, and increment values: ");
   Get(Start); Get(Stop); Get(Increment);

   -- Replace this line with a loop to generate the table of logs.
    
   while Start <= Stop
      loop
         Put("The log table of ");  --display log table
         Put(Start);                --display the start value
         Put(" is ");
         Put( log(Start, 10.0) );   --display the log base 10 values from Start
         New_Line;                  --enter into new line

         --intrement the start value with the increment value
         Start := Start + Increment;

      end loop;

  
end log_table;

