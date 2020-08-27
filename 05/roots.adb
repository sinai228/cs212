-- roots.adb takes in a quadratic function
-- and determines if valid roots can be calculated and prints them
--
-- rootcalc() finds the roots of a quadratic equation
-- Receive: 	equation(a, b, c) - the quadratic function coefficients to be evaluated
-- 		        
-- Returns:   true ---- roots, calculated by the quadratic formula
--            false --- if b^2 - 4ac is (-) or if a is 0
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by: Sinai Park (sp46)
-- Date: March 9 2020
--------------------------------------------------------------
with Ada.Text_IO, Ada.Float_Text_IO, Ada.Numerics.Elementary_Functions;
use  Ada.Text_IO, Ada.Float_Text_IO, Ada.Numerics.Elementary_Functions;

procedure roots is

   A, B, C, Root1, Root2 : Float;
   isTrue                : Boolean;

   ------------------------------------------------
   -- rootcalc() computes the valid roots of a quadratic function           
   -- Receive: (double a, b, c) - the quadratic function 
   --                             coefficients to be evaluated       
   -- PRE: the discriminant must not be a negative
   --      the coefficient of x^2 must not be zero
   -- Passback: boolean true - valid, real roots
   --                   false - invalid, roots
   ------------------------------------------------
   -- Replace this line with definition of rootcalc() 

   procedure rootcalc(A: in Float; B: in Float; C: in Float; isTrue: out Boolean)
      is 
      discriminant: Float := (B * B) - (4.0 * A * C);
      begin
         --if the coefficent of x^2 is not a zero, compute the roots
         if A/= 0.0 then
            if discriminant >= 0.0 then
               Root1 := ((-B + discriminant ** (1.0/2.0))/(2.0*A));
               Root2 := ((-B - discriminant ** (1.0/2.0))/(2.0*A));
               isTrue := true;

            --if the discriminant is a negative value, no real roots
            else
               Put ("ERROR: nThe discriminatnt (b^2 - 4ac) is negative!");
               isTrue := false;
            end if;
         
         --if A is a zero
         else 
            Put ("ERROR: The coefficent of x^2 is a zero");
            isTrue := false;
         end if;
      end;

   begin                                           -- Prompt for input
   Put("To compute the roots of the quadratic formula y = ax^2 + bx + c,");
   New_Line;
   Put("Enter the a value: ");
   Get(A);
   PUt("Enter the b value: ");
   Get(B);
   Put("Enter the c value: ");
   Get(C);

   rootcalc(A, B, C, isTrue);

   --if boolean is true
   if isTrue = true then 
      Put("The first root is ");
      Put(Root1);
      Put(" and the second root is ");
      Put(Root2);
   end if;
end roots;

