-- arrays.adb "test-drives" function readyArray() and printArray().
-- Precondition: theArray is an array of numbers.
-- Output: the average of the numbers.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sinai Park(sp46)
-- Date: March 18 2020
-----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;             -- Put(String)
with Ada.Float_Text_IO; use Ada.Float_Text_IO; -- Put(Float)
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO; -- Put(Integer)

procedure arrays is

	-- declare the Vector array type
	type Vector is array (Positive range <>) of Float;
	
	-- declare the integer size to be prompted to the user
	size: Integer;

	---------------------------------------------------------------------
	-- printArray() prints out each element in the array to the user   --
	-- Receive: A, a Vector array type with Floats in it already       --
	-- Output: each element from A is printed for the user to see      --
	---------------------------------------------------------------------
	procedure printArray(A: Vector) is
	
		begin
			-- Let the user know they are about to see the elements
				-- from the array
			Put("Here are the elements in the array: ");
			New_Line;

			-- For loop to write out each element
			for i in Integer range A'First .. A'Last loop
				Put( A(i) );
				New_Line;
			end loop;

		end printArray;

	---------------------------------------------------------------------------
	-- readArray() fills in the array with floats from the user              --
	-- Receive: A, an empty Vector array type; size, Integer size of  array  --
	-- Output: A is filled with the values from the user                     --
	---------------------------------------------------------------------------
	procedure readArray(A: out Vector; size: Integer) is

		element: Float;

		begin
			-- Prompt the user to enter floats for the array
			Put("Please enter the array doubles: ");
			New_Line;

			-- For loop to get the element and put it in the array
			for i in A'Range loop
				Get(element);
				A(i) := element;
			end loop;

			New_Line;

		end readArray;

begin
	-- Prompt for and receive the size of the array from the user
	Put("Please give the size of the array: ");
	Get(size);
	New_Line;

	-- Declare our array of size from the user
	declare
		array1 : Vector(1 .. size);

	begin
		-- Call procedures readArray() and printArray()
		readArray(array1, size);
		printArray(array1);
	end;
end arrays;

