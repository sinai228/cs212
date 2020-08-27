-- letter_grades.adb converts integer values to corresponding letter grades.
--
-- Created by: Sinai Park(sp46)
-- Date: Feb 24, 2020
--
-- Input: integer value, a integer
-- Precondition: value is a positive integer from 0 to 100
-- Output: The letter grade (A, B, C, D, F) .
----------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure letter_grades is

   average : integer;   
  

   -- function letterGrade
   -- Receive: average, an integer
   -- Precondition: average is any integer from 0 to 100
   -- Return: the string value A, B, C, D, or F
   
   function letterGrade(average: integer) return String is

	begin
		case average/10 is
		
			when 10 | 9 => return "A";    --return A when score/10 is 10 or 9
			when 8  => return "B";		  --return B when score/10 is 8
			when 7 => return "C";         --return C when score/10 is 7
			when 6 => return "D";         --return D when score/10 is 6
			when others => return "F";    --return F when score/10 is below 5

		end case;
	end letterGrade;

begin                                          
   Put("Enter your average number value: ");           -- Prompt for input
   get(average);                                   -- Input
   Put( letterGrade(average) );                       -- Convert and output
   New_Line;
end letter_grades;

