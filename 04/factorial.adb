-- Factorial.adb computes the factorial of a given numbers.
--
-- Input: a number, float.
-- Precondition: the number must be a positive integer.
-- Output: The nth factorial of the integer value n
--
-- Begun by: Prof. Adams, for CS 214 at Calvin College.
-- Completed by: Sinai Park(sp46)
-- Date: March 4 2020
--------------------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO, Ada.Numerics.Elementary_Functions;
use  Ada.Text_IO, Ada.Float_Text_IO, Ada.Numerics.Elementary_Functions;

procedure factorial is

   Number, result, count : Float;               --create variables: number, result and count 

begin                                           -- Prompt for input value 
   Put_Line("To compute the n! factorial,");
   Put(" enter the number value: ");
   Get(Number);
   count := Number;

   -- Replace this line with a loop 
    
   result := 1.0;
   loop
      exit when (count = 0.0);                 --done multiplying each number value

      --multiply it and decrement one from the given number value and loop again
      
      result := result * count;   --store n! value in result
      count := count - 1.0 ;      --decrement value and multiply again

   end loop;

   Put("The n! factorial of ");  --display words
   Put(Number);                  --display the n value, which we are computing the factorial of
   Put(" is ");
   Put(result);                  --display the factorial
   New_Line;                     --enter into new line
  
end factorial;

