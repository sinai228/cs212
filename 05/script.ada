Script started on 2020-03-06 13:01:37-0500
]0;sp46@gold05: ~/214/labs/05[01;32msp46@gold05[00m:[01;34m~/214/labs/05[00m$ cat split.adb
-- split.adb splits an input string about a specified position.
--
-- Input: Astring, a string,
--        Pos, an integer.
-- Precondition: pos is in Astring'Range.
-- Output: The substrings Astring(Astring'First..Pos-1) and
--                        Astring(Pos..Astring'Last).
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by: Sinai Park(sp46)
-- Date: March 6 2020
--------------------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Fixed;
use  Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Fixed;

procedure split is

   EMPTY_STRING : String := "                                        ";

   Astring, Part1, Part2 : String  := EMPTY_STRING;
   Pos, Chars_read       : Natural;

   ------------------------------------------------
   --  split() splits a string in two.           
   -- Receive: The_String, the string to be split,
   --          Position, the split index.        
   -- PRE: 0 < Position <= The_String.length(). 
   --     (Ada arrays are 1-relative by default)
   -- Passback: First_Part - the first substring,
   --           Last_Part - the second substring.
   ------------------------------------------------
   -- Replace this line with definition of split() 

   procedure split (The_String: in String; Pos: in Natural) is
	   begin
         -- Move the first substring into the Part1
         Move(The_String ( The_String'First .. Pos-1 ), Part1);

         -- Move the second substring into the Part2
         Move(The_String ( Pos .. The_String'Last ), Part2);

      end split;


begin                                           -- Prompt for input
   Put("To split a string, enter the string: ");
   Get_Line(Astring, Chars_Read);
   Put("Enter the split position: ");
   Get(Pos);

   split(Astring, Pos);     --erase Part1, Part2 

   Put("The first part is ");
   Put_Line(Part1);
   Put(" and the second part is ");
   Put_Line(Part2);

end split;

]0;sp46@gold05: ~/214/labs/05[01;32msp46@gold05[00m:[01;34m~/214/labs/05[00m$ ./split
To split a string, enter the string: hello
Enter the split position: 1
The first part is                                         
 and the second part is hello                                   
]0;sp46@gold05: ~/214/labs/05[01;32msp46@gold05[00m:[01;34m~/214/labs/05[00m$ ./split
To split a string, enter the string: hello 
Enter the split position: 4
The first part is hel                                     
 and the second part is lo                                      
]0;sp46@gold05: ~/214/labs/05[01;32msp46@gold05[00m:[01;34m~/214/labs/05[00m$ ./split
To split a string, enter the string: hello
Enter the split position: 6
The first part is hello                                   
 and the second part is                                         
]0;sp46@gold05: ~/214/labs/05[01;32msp46@gold05[00m:[01;34m~/214/labs/05[00m$ exit

Script done on 2020-03-06 13:02:10-0500
