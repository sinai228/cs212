Script started on 2020-04-14 07:56:12-0400
]0;sp46@gold09: ~/214/projects/08/ada[01;32msp46@gold09[00m:[01;34m~/214/projects/08/ada[00m$ s cat temp_package.ads
-- name_package.ads declares the Name type and its operations.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sinai Park (sp46)
-- Date: April 10 2020
--------------------------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;

package temp_package is 

  type Temp is private;

  procedure Init(Tm: out Temp;
                 Degrees : in float; Scale : in character);
 
  function getDegree( Tm: in Temp) return float;
  
  function getScale( Tm: in Temp) return character;
 
  procedure setFahrenheit(Tm: out Temp);
  
  procedure setCelsius(Tm: out Temp);

  procedure setKelvin(Tm: out Temp);

  procedure raise_temp(Tm: out Temp; Degrees: in float);

  procedure lower(Tm: out Temp; Degrees: in float);

  function equals(Temp1: in Temp; Temp2: in Temp) return boolean;

  function less_than(Temp1: in Temp; Temp2: in Temp) return boolean;
  
  procedure readTemp(Tm: out Temp);

  procedure printTemp( Tm: in Temp);

 private

  type Temp is
      record
         myDegree: float;
         myScale: character;
      end record;

end temp_package;
]0;sp46@gold09: ~/214/projects/08/ada[01;32msp46@gold09[00m:[01;34m~/214/projects/08/ada[00m$ cat temp_package.adb
-- name_package.adb defines operations for the Name type.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sinai Park (sp46)
-- Date: April 10 2020
---------------------------------------------------------
with Ada.Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Float_Text_IO;

package body temp_package is 

-- Declare variables to be used later in some of the functions
  start, limit : Temp;
  degree_input : float;
  scale_input : character;
  
  ----------------------------------------------
  -- Init initializes a Temp variable          
  -- Receive: Temp variable;          
  --          scale, in char
  --          Degrees, in string;      
  -- Return: temp, set to degree and scale.     
  ----------------------------------------------

  procedure Init(Tm: out Temp;
                 Degrees : in float; Scale : in character ) is
  begin
    Tm.myDegree := Degrees;
    Tm.myScale := Scale;
  end Init;

  ----------------------------------------------
  -- getDegrees(Temp) retrieves Temp.myDegree        
  -- Receive: Nm, a Name.                      
  -- PRE: Nm has been initialized.            
  -- Return: Nm.myFirst.                     
  ----------------------------------------------
  function getDegree( Tm: in Temp) return float is
  begin
    return Tm.myDegree;
  end getDegree;

  ----------------------------------------------
  -- getScale(Temp) retrieves Scale as a char 
  -- Receive: Tm, a Temp.        
  -- PRE: Tm has been initialized.
  -- Return: Tm.myScale. 
  ----------------------------------------------
  function getScale( Tm: in Temp) return character is
  begin
     return Tm.myScale;
  end getScale;

----------------------------------------------------------------------------
-- setFahrenheit(Temp) sets the current temperature to Fahrenheit
-- Receive: Tm, a Temperature
-- PRE: Tm has been initialized.
-- Output: Tm.myDegree in Fahrenheit
----------------------------------------------------------------------------
procedure setFahrenheit(Tm: out Temp) is
begin
	if Tm.myScale = 'C' or Tm.myScale = 'c' then
		Tm.myDegree := (( Tm.myDegree * (9.0/5.0)) + 32.0 );
		Tm.myScale := 'F';
	elsif ( Tm.myScale = 'K' or Tm.myScale = 'k' ) then
		Tm.myDegree := (( Tm.myDegree * (9.0/5.0)) - 459.67) ;
		Tm.myScale := 'F';
	end if;
end setFahrenheit;

----------------------------------------------------------------------------
-- setCelsius(Temp) sets the current temperature to Celsius
-- Receive: Tm, a Temperature
-- PRE: Tm has been initialized.
-- Output: Tm.myDegree in Celsius
----------------------------------------------------------------------------
procedure setCelsius(Tm: out Temp) is
begin
	if Tm.myScale = 'F' or Tm.myScale = 'F' then
		Tm.myDegree := (( Tm.myDegree - 32.0 ) * (5.0/9.0) );
		Tm.myScale := 'C';
	elsif ( Tm.myScale = 'K' or Tm.myScale = 'k' ) then
		Tm.myDegree := ( Tm.myDegree  - 273.15) ;
		Tm.myScale := 'C';
	end if;
end setCelsius;

----------------------------------------------------------------------------
-- setKelvin(Temp) sets the current temperature to Kelvin
-- Receive: Tm, a Temperature
-- PRE: Tm has been initialized.
-- Output: Tm.myDegree in Kelvin
----------------------------------------------------------------------------
procedure setKelvin(Tm: out Temp) is
begin
	if Tm.myScale = 'F' or Tm.myScale = 'f' then
		Tm.myDegree := (( Tm.myDegree + 459.67) * (5.0/9.0) );
		Tm.myScale := 'K';
	elsif ( Tm.myScale = 'C' or Tm.myScale = 'c' ) then
		Tm.myDegree := ( Tm.myDegree + 273.15 );
		Tm.myScale := 'K';
	end if;
end setKelvin;

---------------------------------------------------------------------
-- raise(Temp, Degrees) raises the current degrees by Degrees
-- Receive: Temp, a Temperature; Degreess, a float
-- Output: Temp.myDegrees raised by Degrees
---------------------------------------------------------------------
procedure raise_temp(Tm: out Temp; Degrees: in float) is
begin
	Tm.myDegree := Tm.myDegree + Degrees;
end raise_temp;

---------------------------------------------------------------------
-- lower(Temp, Degrees) lowers the current degrees by Degrees
-- Receive: Temp, a Temperature; Degrees, a float
-- Output: Temp.myDegrees lowered by Degrees
---------------------------------------------------------------------
procedure lower(Tm: out Temp; Degrees: in float) is
begin
	Tm.myDegree := Tm.myDegree - Degrees;
end lower;


------------------------------------------------------------------
-- equals(Temp1, Temp2) checks if the two Temperatures are equal
-- Receive: Temp1 and Temp2, both Temperatures
-- Return: true if degrees are equal; else false
------------------------------------------------------------------
function equals(Temp1: in Temp; Temp2: in Temp) return boolean is
begin
	Init(start, getDegree(Temp1), getScale(Temp1));
	Init(limit, getDegree(Temp2), getScale(Temp2));

	setFahrenheit(start);
	setFahrenheit(limit);

	if (start.myDegree = limit.myDegree) then
		return true;
	else
		return false;
	end if;

end equals;

------------------------------------------------------------------
-- less_than(Temp1, Temp2) checks if Temp1 is less than Temp2
-- Receive: Temp1 and Temp2, both Temperatures
-- PRE: Temp1 and Temp2 have already been initialized
-- Return: true if Temp1 < Temp2; else return false
------------------------------------------------------------------
function less_than(Temp1: in Temp; Temp2: in Temp) return boolean is
begin
	Init(start, getDegree(Temp1), getScale(Temp1));
	Init(limit, getDegree(Temp2), getScale(Temp2));

	setFahrenheit(start);
	setFahrenheit(limit);

	if start.myDegree < limit.myDegree then
		return true;
	else
		return false;
	end if;

end less_than;

---------------------------------------------------------------------
-- readTemp(Tm) reads in the temperature and scale from the user
-- Receive: Tm, a Temperature
-- PRE: Temp has already been initialized
-- Output: Temp has new myDegrees and myScale values
---------------------------------------------------------------------
procedure readTemp(Tm: out Temp) is
begin
	New_Line;
	Put("Please enter the temperature: ");
	Get(degree_input);
	Put("Please enter the scale: ");
	Get(scale_input);

	
		Tm.myDegree := 	degree_input;
		Tm.myScale := scale_input;
	
end readTemp;

  ----------------------------------------------
  -- printTemp(Temp) displays a Temp value.          -
  -- PRE: Tm has been initialized.             -
  -- Receive: Tm, a Temp.                      -
  -- Output: a String representation of Tm                -
  ----------------------------------------------
  procedure printTemp( Tm: in Temp) is
  begin
    Put( Tm.myDegree );
	Put(" ") ;
	Put( Tm.myScale );
  end printTemp;


end temp_package; 
]0;sp46@gold09: ~/214/projects/08/ada[01;32msp46@gold09[00m:[01;34m~/214/projects/08/ada[00m$ cat temperature.adb
-- namer.adb "test-drives" the Name type.
-- Begun by: Prof. Adams, CS 214 at Calvin College.
-- Completed by: Sinai Park (sp46)
-- Date: March 31 2020
----------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO, temp_package;
use Ada.Text_IO, Ada.Float_Text_IO, temp_package;

procedure temperature is

   -- Declaring variables to be used later in the table test procedure
	start_Temp, end_temp : temp_package.Temp;
	increment_num : float;
	temp_scale : character;

begin
	-- Prompt the user for the starting temperature
	Put("Starting Temperature");
	readTemp(start_Temp);

	-- Prompt the user for the ending temperature
	Put("Ending Temperature");
	readTemp(end_temp);

	-- Prompt the user for the increment value
	Put("Please enter the increment value: ");
	Get(increment_num);

	temp_scale := getScale(start_temp);

	-- While loop to print out the temperature values in a table format in each scale
	while ( less_than(start_temp, end_temp) or equals(start_temp, end_temp) ) loop

		-- First print out the Fahrenheit degrees
		setFahrenheit(start_temp);
		printTemp(start_temp);
		Put("     ");

		-- Second print out the Celsius degrees
		setCelsius(start_temp);
		printTemp(start_temp);
		Put("     ");
		
		-- Third print out the Celsius degrees
		setKelvin(start_temp);
		printTemp(start_temp);
		New_Line;

		-- Determine what the start_temp Scale was to return it back to that Scale
		if ( temp_scale = 'F' or temp_scale = 'f' ) then
			setFahrenheit(start_temp);
		elsif ( temp_scale = 'K' or temp_scale = 'k' ) then
			setKelvin(start_temp);
		elsif ( temp_scale = 'C' or temp_scale = 'c' ) then
			setCelsius(start_temp);
		end if;
	
		-- Increment the start_temp by increment
		raise_temp(start_temp, increment_num );

	end loop;

end temperature;
]0;sp46@gold09: ~/214/projects/08/ada[01;32msp46@gold09[00m:[01;34m~/214/projects/08/ada[00m$ gnam tmake temperature
gnatmake: "temperature" up to date.
]0;sp46@gold09: ~/214/projects/08/ada[01;32msp46@gold09[00m:[01;34m~/214/projects/08/ada[00m$ gnatmake temp_package
]0;sp46@gold09: ~/214/projects/08/ada[01;32msp46@gold09[00m:[01;34m~/214/projects/08/ada[00m$ gnatmake temp_package[1Perature[1Pcat temperature.adb[1@_package.adbs[7P./temperature[7Pcd ada./temperature
Starting Temperature
Please enter the temperature: 0
Please enter the scale: f
Ending Temperature
Please enter the temperature: 100
Please enter the scale: c
Please enter the increment value: 2.5
 0.00000E+00 f      0.00000E+00 f      2.55372E+02 K
 2.50000E+00 F     -1.63889E+01 C      2.56761E+02 K
 4.99997E+00 F     -1.50000E+01 C      2.58150E+02 K
 7.49991E+00 F     -1.36112E+01 C      2.59539E+02 K
 9.99985E+00 F     -1.22223E+01 C      2.60928E+02 K
 1.24998E+01 F     -1.08335E+01 C      2.62317E+02 K
 1.49997E+01 F     -9.44460E+00 C      2.63705E+02 K
 1.74997E+01 F     -8.05574E+00 C      2.65094E+02 K
 1.99996E+01 F     -6.66689E+00 C      2.66483E+02 K
 2.24995E+01 F     -5.27803E+00 C      2.67872E+02 K
 2.49995E+01 F     -3.88918E+00 C      2.69261E+02 K
 2.74994E+01 F     -2.50032E+00 C      2.70650E+02 K
 2.99994E+01 F     -1.11147E+00 C      2.72039E+02 K
 3.24993E+01 F      2.77388E-01 C      2.73427E+02 K
 3.49992E+01 F      1.66624E+00 C      2.74816E+02 K
 3.74992E+01 F      3.05510E+00 C      2.76205E+02 K
 3.99991E+01 F      4.44395E+00 C      2.77594E+02 K
 4.24991E+01 F      5.83281E+00 C      2.78983E+02 K
 4.49990E+01 F      7.22166E+00 C      2.80372E+02 K
 4.74989E+01 F      8.61052E+00 C      2.81760E+02 K
 4.99989E+01 F      9.99937E+00 C      2.83149E+02 K
 5.24988E+01 F      1.13882E+01 C      2.84538E+02 K
 5.49987E+01 F      1.27771E+01 C      2.85927E+02 K
 5.74987E+01 F      1.41659E+01 C      2.87316E+02 K
 5.99986E+01 F      1.55548E+01 C      2.88705E+02 K
 6.24986E+01 F      1.69436E+01 C      2.90094E+02 K
 6.49985E+01 F      1.83325E+01 C      2.91482E+02 K
 6.74984E+01 F      1.97214E+01 C      2.92871E+02 K
 6.99984E+01 F      2.11102E+01 C      2.94260E+02 K
 7.24983E+01 F      2.24991E+01 C      2.95649E+02 K
 7.49983E+01 F      2.38879E+01 C      2.97038E+02 K
 7.74982E+01 F      2.52768E+01 C      2.98427E+02 K
 7.99981E+01 F      2.66656E+01 C      2.99816E+02 K
 8.24981E+01 F      2.80545E+01 C      3.01204E+02 K
 8.49980E+01 F      2.94433E+01 C      3.02593E+02 K
 8.74980E+01 F      3.08322E+01 C      3.03982E+02 K
 8.99979E+01 F      3.22211E+01 C      3.05371E+02 K
 9.24978E+01 F      3.36099E+01 C      3.06760E+02 K
 9.49978E+01 F      3.49988E+01 C      3.08149E+02 K
 9.74977E+01 F      3.63876E+01 C      3.09538E+02 K
 9.99977E+01 F      3.77765E+01 C      3.10926E+02 K
 1.02498E+02 F      3.91653E+01 C      3.12315E+02 K
 1.04998E+02 F      4.05542E+01 C      3.13704E+02 K
 1.07497E+02 F      4.19430E+01 C      3.15093E+02 K
 1.09997E+02 F      4.33319E+01 C      3.16482E+02 K
 1.12497E+02 F      4.47207E+01 C      3.17871E+02 K
 1.14997E+02 F      4.61096E+01 C      3.19260E+02 K
 1.17497E+02 F      4.74985E+01 C      3.20648E+02 K
 1.19997E+02 F      4.88873E+01 C      3.22037E+02 K
 1.22497E+02 F      5.02762E+01 C      3.23426E+02 K
 1.24997E+02 F      5.16650E+01 C      3.24815E+02 K
 1.27497E+02 F      5.30539E+01 C      3.26204E+02 K
 1.29997E+02 F      5.44427E+01 C      3.27593E+02 K
 1.32497E+02 F      5.58316E+01 C      3.28982E+02 K
 1.34997E+02 F      5.72204E+01 C      3.30370E+02 K
 1.37497E+02 F      5.86093E+01 C      3.31759E+02 K
 1.39997E+02 F      5.99982E+01 C      3.33148E+02 K
 1.42497E+02 F      6.13870E+01 C      3.34537E+02 K
 1.44997E+02 F      6.27759E+01 C      3.35926E+02 K
 1.47496E+02 F      6.41647E+01 C      3.37315E+02 K
 1.49996E+02 F      6.55536E+01 C      3.38704E+02 K
 1.52496E+02 F      6.69424E+01 C      3.40092E+02 K
 1.54996E+02 F      6.83313E+01 C      3.41481E+02 K
 1.57496E+02 F      6.97201E+01 C      3.42870E+02 K
 1.59996E+02 F      7.11090E+01 C      3.44259E+02 K
 1.62496E+02 F      7.24978E+01 C      3.45648E+02 K
 1.64996E+02 F      7.38867E+01 C      3.47037E+02 K
 1.67496E+02 F      7.52756E+01 C      3.48426E+02 K
 1.69996E+02 F      7.66644E+01 C      3.49814E+02 K
 1.72496E+02 F      7.80533E+01 C      3.51203E+02 K
 1.74996E+02 F      7.94421E+01 C      3.52592E+02 K
 1.77496E+02 F      8.08310E+01 C      3.53981E+02 K
 1.79996E+02 F      8.22198E+01 C      3.55370E+02 K
 1.82496E+02 F      8.36087E+01 C      3.56759E+02 K
 1.84996E+02 F      8.49975E+01 C      3.58148E+02 K
 1.87496E+02 F      8.63864E+01 C      3.59536E+02 K
 1.89995E+02 F      8.77753E+01 C      3.60925E+02 K
 1.92495E+02 F      8.91641E+01 C      3.62314E+02 K
 1.94995E+02 F      9.05530E+01 C      3.63703E+02 K
 1.97495E+02 F      9.19418E+01 C      3.65092E+02 K
 1.99995E+02 F      9.33307E+01 C      3.66481E+02 K
 2.02495E+02 F      9.47195E+01 C      3.67870E+02 K
 2.04995E+02 F      9.61084E+01 C      3.69258E+02 K
 2.07495E+02 F      9.74972E+01 C      3.70647E+02 K
 2.09995E+02 F      9.88861E+01 C      3.72036E+02 K
]0;sp46@gold09: ~/214/projects/08/ada[01;32msp46@gold09[00m:[01;34m~/214/projects/08/ada[00m$ 0 A./temperature
Starting Temperature
Please enter the temperature: 0
Please enter the scale: k
Ending Temperature
Please enter the temperature: 212
Please enter the scale: f
Please enter the increment value: 20.0
-4.59670E+02 F     -2.73150E+02 C     -3.05176E-05 K
-4.23670E+02 F     -2.53150E+02 C      1.99999E+01 K
-3.87670E+02 F     -2.33150E+02 C      3.99999E+01 K
-3.51670E+02 F     -2.13150E+02 C      5.99999E+01 K
-3.15670E+02 F     -1.93150E+02 C      7.99999E+01 K
-2.79670E+02 F     -1.73150E+02 C      9.99998E+01 K
-2.43670E+02 F     -1.53150E+02 C      1.20000E+02 K
-2.07670E+02 F     -1.33150E+02 C      1.40000E+02 K
-1.71670E+02 F     -1.13150E+02 C      1.60000E+02 K
-1.35670E+02 F     -9.31503E+01 C      1.80000E+02 K
-9.96705E+01 F     -7.31503E+01 C      2.00000E+02 K
-6.36706E+01 F     -5.31503E+01 C      2.20000E+02 K
-2.76706E+01 F     -3.31503E+01 C      2.40000E+02 K
 8.32938E+00 F     -1.31503E+01 C      2.60000E+02 K
 4.43293E+01 F      6.84962E+00 C      2.80000E+02 K
 8.03293E+01 F      2.68496E+01 C      3.00000E+02 K
 1.16329E+02 F      4.68496E+01 C      3.20000E+02 K
 1.52329E+02 F      6.68495E+01 C      3.40000E+02 K
 1.88329E+02 F      8.68495E+01 C      3.59999E+02 K
]0;sp46@gold09: ~/214/projects/08/ada[01;32msp46@gold09[00m:[01;34m~/214/projects/08/ada[00m$ exit

Script done on 2020-04-14 07:57:22-0400
