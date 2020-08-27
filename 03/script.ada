Script started on 2020-02-25 16:03:28-0500
]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ gnatmake - L letter_frea    grades.aad  db
gnatmake: "letter_grades" up to date.
]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ c gnatmake letter_grades.adb[11P./letter_gradescat letter_grades.adb
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

]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ cat letter_grades.adb[5@gnatmake letter_grades.adb[11P./letter_grades
Enter your average number value: 32
F
]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ ./letter_grades
Enter your average number value: 61
D
]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ ./letter_grades
Enter your average number value: 77
C
]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ ./letter_grades
Enter your average number value: 89
B
]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ ./letter_grades
Enter your average number value: 90
A
]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ exit

Script done on 2020-02-25 16:03:58-0500
 letter_grades.adb
x86_64-linux-gnu-gnatbind-7 -x letter_grades.ali
x86_64-linux-gnu-gnatlink-7 letter_grades.ali
]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ script sci ript.ada
Script started, file is script.ada
]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ c ./letter_gradescat letter_grades.adb
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

]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ cat letter_grades.adb[6P./letter_grades
Enter your average number value: 34
F
]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ ./letter_grades
Enter your average number value: 61
D
]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ ./letter_grades
Enter your average number value: 79
C
]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ ./letter_grades
Enter your average number value: 88
B
]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ ./letter_grades91  
Enter your average number value: 90
A
]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ exit
Script done, file is script.ada
]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ [K]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ [K]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ [K]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ [K]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ script sa  script.ada
Script started, file is script.ada
]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ gnatmake - L letter_frea    grades.aad  db
gnatmake: "letter_grades" up to date.
]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ c gnatmake letter_grades.adb[11P./letter_gradescat letter_grades.adb
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

]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ cat letter_grades.adb[5@gnatmake letter_grades.adb[11P./letter_grades
Enter yo