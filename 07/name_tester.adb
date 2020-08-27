-- namer.adb "test-drives" the Name type.
-- Begun by: Prof. Adams, CS 214 at Calvin College.
-- Completed by: Sinai Park (sp46)
-- Date: March 31 2020
----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;

procedure name_tester is

  -- replace this line with the definition of NAME_SIZE
  NAME_SIZE : constant := 8;

  -- replace this line with the definition of Name
  type name is 
    record 
      MyFirst, MyMiddle, MyLast : String( 1..NAME_SIZE );
    end record;

  aName : Name ;

   -- strings for readName procedure
   charsRead : Natural;
   first, middle, last : String( 1..NAME_SIZE );

  ----------------------------------------------
  -- Init initializes a Name variable          -
  -- Receive: theName, the Name variable;      -
  --          First, the first name;           -
  --          Middle, the middle name;         -
  --          Last, the last name.             -
  -- Return: theName, its fields set to First, -
  --               Middle, and Last.           -
  ----------------------------------------------

  procedure Init(TheName: out Name;
                 First, Middle, Last : in String) is

  begin
    TheName.MyFirst := First;
    TheName.MyMiddle := Middle;
    TheName.MyLast := Last;
  end Init;


  ----------------------------------------------
  -- getFirst(Name) retrieves Name.myFirst        -
  -- Receive: theName, a Name.                 -
  -- PRE: theName has been initialized.        -
  -- Return: theName.myFirst.                  -
  ----------------------------------------------

  function getFirst(TheName : in Name) return String is
   begin
      return TheName.MyFirst;
   end getFirst;


  ----------------------------------------------
  -- getMiddle(Name) retrieves Name.myMiddle        -
  -- Receive: theName, a Name.                 -
  -- PRE: theName has been initialized.        -
  -- Return: theName.myMiddle.                  -
  ----------------------------------------------
  function getMiddle(TheName : in Name) return String is
   begin
      return TheName.myMiddle;
   end getMiddle;

    ----------------------------------------------
  -- getLast(Name) retrieves Name.myLast        -
  -- Receive: theName, a Name.                 -
  -- PRE: theName has been initialized.        -
  -- Return: theName.myLast.                  -
  ----------------------------------------------
  function getLast(TheName : in Name) return String is
   begin
      return TheName.myLast;
   end getLast;

  -----------------------------------------------
  -- getFullName(Name) retrieves Name as a String  -
  -- Receive: theName, a Name.                  -
  -- PRE: theName has been initialized.         -
  -- Return: a String representation of theName -
  -----------------------------------------------

  function getFullName(TheName : in Name) return String is
   begin
      return TheName.myFirst & " " & TheName.myMiddle & " " & TheName.myLast;
   end getFullName;

  ----------------------------------------------
  -- Put(Name) displays a Name value.          -
  -- PRE: theName has been initialized.        -
  -- Receive: theName, a Name.                 -
  -- Output: theName, to the screen.           -
  ----------------------------------------------
   
   procedure Put(TheName: in Name) is      --parameter flows in but not out, so use in mode
   begin
      Put( TheName.MyFirst & " " & TheName.MyMiddle & " " & TheName.MyLast );
   end Put;





----------------------------------------------
  -- setFirst(Name) changes Name.myFirst        -
  -- Receive: theName, a Name, NewFirst, a String                 -
  -- PRE: theName has been initialized.        -
  -- Return: void                 -
  ----------------------------------------------

  procedure setFirst(TheName: out Name; NewFirst : in String) is
   begin
      TheName.MyFirst := NewFirst;
   end setFirst;


  ----------------------------------------------
  -- setMiddle(Name) changes Name.myMiddle        -
  -- Receive: theName, a Name. NewMiddle, a String                 -
  -- PRE: theName has been initialized.        -
  -- Return: void                  -
  ----------------------------------------------
  procedure setMiddle(TheName: out Name; NewMiddle : in String) is
   begin
      TheName.MyMiddle := NewMiddle;
   end setMiddle;

  ----------------------------------------------
  -- setLast(Name) changes Name.myLast        -
  -- Receive: theName, a Name. NewLast, a String                 -
  -- PRE: theName has been initialized.        -
  -- Return: void                  -
  ----------------------------------------------
  procedure setLast(TheName: out Name; NewLast : in String) is
   begin
      TheName.MyLast := NewLast;
   end setLast;

  -----------------------------------------------
  -- lfmi(Name) retrieves Name as a String  -
  -- Receive: theName, a Name.                  -
  -- PRE: theName has been initialized.         -
  -- Return: lfm order of name on the screen -
  -----------------------------------------------

  function lfmi(TheName : in Name) return String is
   begin
      return TheName.MyLast & " " & TheName.MyFirst & " " & TheName.MyMiddle(TheName.MyMiddle'First) ;
   end lfmi;

----------------------------------------------------
  -- readName() reads in names from the user input -
  -- Receive: theName, a Name                      -
  -- PRE: none, theName does not have to be initialized -
  -- Return: None                                  -
  --------------------------------------------------

 procedure readName(TheName: out Name)  is
   begin 
      Put( "Please enter the new first name: ");
      Get_Line(first, charsRead);
      TheName.MyFirst := first;

      Put( "Please enter the new middle name: ");
      Get_Line(middle, charsRead);
      TheName.MyMiddle := middle;

      Put( "Please enter the new last name: ");
      Get_Line(last, charsRead);
      TheName.MyLast := last;
   end readName;

begin
   Init(aName, "John    ", "Paul    ", "Jones   ");

   pragma Assert( getFirst(aName) = "John    ", "getFirst() failed");
   pragma Assert( getMiddle(aName) = "Paul    ", "getMiddle() failed");
   pragma Assert( getLast(aName) = "Jones   ", "getLast() failed");
   pragma Assert( getFullName(aName) = "John     Paul     Jones   ", 
                    "getFullName() failed");
   pragma Assert( lfmi(aName) = "Jones    John     P", 
                    "lfmi() failed first");
   Put(aName); New_line;                 
   
   setFirst(aName, "Nathan  ");
   setMiddle(aName, "Bloom   ");
   setLast(aName, "Smith   ");

   pragma Assert( getFirst(aName) = "Nathan  ", "getFirst() failed");
   pragma Assert( getMiddle(aName) = "Bloom   ", "getMiddle() failed");
   pragma Assert( getLast(aName) = "Smith   ", "getLast() failed");
   pragma Assert( getFullName(aName) = "Nathan   Bloom    Smith   ", 
                    "getFullName() failed");
   pragma Assert( lfmi(aName) = "Smith    Nathan   B", 
                    "lfmi() failed");
   Put(aName);    
   New_line;
   readName(aName);
   pragma Assert( getFullName(aName) /= "Nathan    Bloom    Smith   ", 
                    "getFullName() failed");
   Put(aName); New_line;
   Put("All tests passed!"); New_line;

end name_tester;

