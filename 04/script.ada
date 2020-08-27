Script started on 2020-03-05 10:14:15-0500
]0;sp46@gold10: ~/214/projects/04[01;32msp46@gold10[00m:[01;34m~/214/projects/04[00m$ cat factorial.adb
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

]0;sp46@gold10: ~/214/projects/04[01;32msp46@gold10[00m:[01;34m~/214/projects/04[00m$ gnatmake factorial
gnatmake: "factorial" up to date.
]0;sp46@gold10: ~/214/projects/04[01;32msp46@gold10[00m:[01;34m~/214/projects/04[00m$ ./factorial
To compute the n! factorial,
 enter the number value: 2
The n! factorial of  2.00000E+00 is  2.00000E+00
]0;sp46@gold10: ~/214/projects/04[01;32msp46@gold10[00m:[01;34m~/214/projects/04[00m$ ./factorial
To compute the n! factorial,
 enter the number value: 4
The n! factorial of  4.00000E+00 is  2.40000E+01
]0;sp46@gold10: ~/214/projects/04[01;32msp46@gold10[00m:[01;34m~/214/projects/04[00m$ ./factorial
To compute the n! factorial,
 enter the number value: 6
The n! factorial of  6.00000E+00 is  7.20000E+02
]0;sp46@gold10: ~/214/projects/04[01;32msp46@gold10[00m:[01;34m~/214/projects/04[00m$ ./factorial
To compute the n! factorial,
 enter the number value: 8
The n! factorial of  8.00000E+00 is  4.03200E+04
]0;sp46@gold10: ~/214/projects/04[01;32msp46@gold10[00m:[01;34m~/214/projects/04[00m$ ./factorial
To compute the n! factorial,
 enter the number value: 21
The n! factorial of  2.10000E+01 is  5.10909E+19
]0;sp46@gold10: ~/214/projects/04[01;32msp46@gold10[00m:[01;34m~/214/projects/04[00m$ exit

Script done on 2020-03-05 10:14:39-0500
