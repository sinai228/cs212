Script started on 2020-04-10 02:33:05-0400
]0;sp46@gold09: ~/214/labs/08/ada[01;32msp46@gold09[00m:[01;34m~/214/labs/08/ada[00m$ cat name_tster.     ester.adb
-- name_tester.adb "test-drives" the Name type.
--
-- Begun by: Dr. Adams, CPSC 280, October 1999.
-- Completed by: Sinai Park (sp46)
-- Date: April 10 2020
----------------------------------------------

with Ada.Text_IO, Name_Package;
use Ada.Text_IO, Name_Package;



procedure name_tester is
 
  aName : Name_Package.Name;

 begin
  Name_Package.Init(aName, "John    ", "Paul    ", "Jones   ");
 
  pragma Assert( getFirst(aName) = "John    ",
                   "getFirst() failed");

  pragma Assert( getMiddle(aName) = "Paul    ", 
                   "getMiddle() failed");

  pragma Assert( getLast(aName) = "Jones   ", 
                   "getLast() failed");

  pragma Assert( getFullName(aName) = "John     Paul     Jones   ",
                    "getFullName() failed");

  Put(aName); New_line;
  
  Put("All tests passed!"); New_line;
end name_tester;

]0;sp46@gold09: ~/214/labs/08/ada[01;32msp46@gold09[00m:[01;34m~/214/labs/08/ada[00m$ cat name_package.adb
-- name_package.adb defines operations for the Name type.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sinai Park (sp46)
-- Date: April 10 2020
---------------------------------------------------------
with Ada.Text_IO;
use Ada.Text_IO;

package body name_package is 
  
  ----------------------------------------------
  -- Init initializes a Name variable          
  -- Receive: Nm, the Name variable;          
  --          First, the first name;         
  --          Middle, the middle name;      
  --          Last, the last name.         
  -- Return: Nm, its fields set to First, 
  --               Middle, and Last.     
  ----------------------------------------------

  procedure Init(Nm: out Name;
                 First, Middle, Last : in String) is
  begin
    Nm.MyFirst := First;
    Nm.MyMiddle := Middle;
    Nm.MyLast := Last;
  end Init;

  ----------------------------------------------
  -- getFirst(Name) retrieves Name.myFirst        
  -- Receive: Nm, a Name.                      
  -- PRE: Nm has been initialized.            
  -- Return: Nm.myFirst.                     
  ----------------------------------------------
  function getFirst( Nm: in Name) return String is
  begin
    return Nm.MyFirst;
  end getFirst;

  ----------------------------------------------
  -- getMiddle(Name) retrieves Name as a String 
  -- Receive: Nm, a Name.        
  -- PRE: Nm has been initialized.
  -- Return: Nm.myMiddle. 
  ----------------------------------------------
  function getMiddle( Nm: in Name) return String is
  begin
     return Nm.MyMiddle;
  end getMiddle;

  ----------------------------------------------
  -- getLast(Name) retrieves Name.myLast       
  -- Receive: Nm, a Name.                    
  -- PRE: Nm has been initialized.            
  -- Return: Nm.myLast.                        
  ----------------------------------------------
  function getLast( Nm: in Name) return String is
  begin
     return Nm.MyLast;
  end getLast;

  ----------------------------------------------
  -- getFullName(Name) retrieves Name as a String -
  -- Receive: Nm, a Name.                      -
  -- PRE: Nm has been initialized.             -
  -- Return: a String representation of Nm.    -
  ----------------------------------------------
  function getFullName( Nm: in Name) return String is
  begin
    return Nm.MyFirst & " "
           & Nm.MyMiddle & " "
           & Nm.MyLast;
  end getFullName;

  ----------------------------------------------
  -- Put(Name) displays a Name value.          -
  -- PRE: Nm has been initialized.             -
  -- Receive: Nm, a Name.                      -
  -- Output: Nm, to the screen.                -
  ----------------------------------------------
  procedure Put(Nm: in Name) is
  begin
    Put( getFullName(Nm) );
  end Put;


end name_package; 
]0;sp46@gold09: ~/214/labs/08/ada[01;32msp46@gold09[00m:[01;34m~/214/labs/08/ada[00m$ cat name_paccccckage.ads               package.ads
-- name_package.ads declares the Name type and its operations.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sinai Park (sp46)
-- Date: April 10 2020
--------------------------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;

package name_package is 

  type Name is private;

  procedure Init(Nm: out Name;
                 First, Middle, Last : in String);
 
  function getFirst( Nm: in Name) return String;
  
  function getMiddle( Nm: in Name) return String;
 
  function getLast( Nm: in Name) return String;
  
  function getFullName( Nm: in Name) return String;
  
  procedure Put(Nm: in Name);

 private

  NAME_SIZE : constant Positive := 8;

  type Name is
      record
         myFirst,
         myMiddle,
         MyLast : String(1..NAME_SIZE);
      end record;

end name_package;
]0;sp46@gold09: ~/214/labs/08/ada[01;32msp46@gold09[00m:[01;34m~/214/labs/08/ada[00m$ gnatma ake man   name_tester
gnatmake: "name_tester" up to date.
]0;sp46@gold09: ~/214/labs/08/ada[01;32msp46@gold09[00m:[01;34m~/214/labs/08/ada[00m$ gnam tmake name_package
]0;sp46@gold09: ~/214/labs/08/ada[01;32msp46@gold09[00m:[01;34m~/214/labs/08/ada[00m$ ./name_tester
John     Paul     Jones   
All tests passed!
]0;sp46@gold09: ~/214/labs/08/ada[01;32msp46@gold09[00m:[01;34m~/214/labs/08/ada[00m$ exit

Script done on 2020-04-10 02:33:56-0400
