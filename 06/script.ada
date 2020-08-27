Script started on 2020-03-16 23:37:26-0400
]0;sp46@maroon34: ~/214/labs/06[01;32msp46@maroon34[00m:[01;34m~/214/labs/06[00m$ cat average.adbls[Kcd 214/labs/06ls[Kcat average.adb[Kgnat  make average.adb
gnatmake: "average" up to date.
]0;sp46@maroon34: ~/214/labs/06[01;32msp46@maroon34[00m:[01;34m~/214/labs/06[00m$ cat averab ge.adb
-- average.adb "test-drives" function Average.
-- Precondition: theArray is an array of numbers.
-- Output: the average of the numbers.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sinai Park(sp46)
-- Date: March 12 2020
-----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;             -- Put(String)
with Ada.Float_Text_IO; use Ada.Float_Text_IO; -- Put(Float)

procedure average is

-- Declare Vector type
   type Vector is array ( Positive range <>) of Float;

-- Define array0 as an array containing no values
   array0 : Vector := (0.0, 0.0);

-- Define array1 as an array containing 9, 8, 7, 6
   array1 : Vector := (9.0, 8.0, 7.0, 6.0); 

----------------------------------------------
-- sum() sums the values in an array           -
-- Receive: anArray, an array of numbers     -
-- Return: the sum of the values in anArray. -
----------------------------------------------

-- Replace this line with definition of sum()
function sum(anArray: Vector) return Float is
   Total: Float := 0.0;
   begin
   for I in Integer range anArray'First ..anArray'Last 
   loop
      Total := Total + anArray(I);
   end loop;
   return Total;
end sum;

-----------------------------s-----------------
-- average() computes averages of the values in an array           -
-- Receive: anArray, an array of numbers     -
-- Return: the average of the values in anArray. -
----------------------------------------------

-- Replace this line with documentation and definition of average()
function average(anArray: Vector) return Float is
   begin
      --check to see if the array is empty, then return 0
      if anArray'length = 0 then
         return 0.0;
      else 
         --divide the sum of array by the length of the given array
         return sum(anArray) / Float(anArray'length);   
      end if;
end average;

begin
   Put(" average 0 is ");
   Put( average(array0) );
   New_line;
   Put(" average 1 is ");
   Put( average(array1) );
   New_line;
end average;

]0;sp46@maroon34: ~/214/labs/06[01;32msp46@maroon34[00m:[01;34m~/214/labs/06[00m$ ./average
 average 0 is  0.00000E+00
 average 1 is  7.50000E+00
]0;sp46@maroon34: ~/214/labs/06[01;32msp46@maroon34[00m:[01;34m~/214/labs/06[00m$ exit

Script done on 2020-03-16 23:37:52-0400
