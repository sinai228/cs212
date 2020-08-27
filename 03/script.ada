Script started on 2020-02-21 12:53:14-0500
]0;sp46@gold03: ~/214/labs/03[01;32msp46@gold03[00m:[01;34m~/214/labs/03[00m$ cat year_codes.adb
-- year_codes.adb converts academic year codes to corresponding years.
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by: Sinai Park(sp46)
-- Date: Feb 21, 2020
--
-- Input: year, a string
-- Precondition: year is one of "freshman", "sophomore", "junior", "senior"
-- Output: The year code (1, 2, 3 or 4) corresponding to year.
----------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure year_codes is

   year : String(1..9) := "         ";
   charsRead : Natural;

   -- function YearCode
   -- Receive: year, a string
   -- Precondition: year is one of (freshman, sophomore, junior, senior)
   -- Return: the integer code corresponding to year (1,2,3,4)
   
   function YearCode(year: String) return integer is

	begin
		if year = "freshman " then
			return 1;
		Elsif ( year = "sophomore" ) then
			return 2;
		Elsif ( year = "junior   " ) then
			return 3;
		Elsif ( year = "senior   " ) then
			return 4;
		Else
			return 0;
		end if;
	end YearCode;

begin                                          
   Put("Enter your academic year: ");           -- Prompt for input
   Get_Line(year, charsRead);                   -- Input
   Put( yearCode(year) );                       -- Convert and output
   New_Line;
end year_codes;

]0;sp46@gold03: ~/214/labs/03[01;32msp46@gold03[00m:[01;34m~/214/labs/03[00m$ gnat  m, ake year__ codes
gnatmake: "year_codes" up to date.
]0;sp46@gold03: ~/214/labs/03[01;32msp46@gold03[00m:[01;34m~/214/labs/03[00m$ ./year_codes
Enter your academic year: sophomore
          2
]0;sp46@gold03: ~/214/labs/03[01;32msp46@gold03[00m:[01;34m~/214/labs/03[00m$ 2 ./year_codes
Enter your academic year: 04671
          0
]0;sp46@gold03: ~/214/labs/03[01;32msp46@gold03[00m:[01;34m~/214/labs/03[00m$ ./year_codes
Enter your academic year: seniorrr
          0
]0;sp46@gold03: ~/214/labs/03[01;32msp46@gold03[00m:[01;34m~/214/labs/03[00m$ ./year_codes
Enter your academic year: senior
          4
]0;sp46@gold03: ~/214/labs/03[01;32msp46@gold03[00m:[01;34m~/214/labs/03[00m$ exit

Script done on 2020-02-21 12:54:04-0500
