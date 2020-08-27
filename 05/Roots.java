/* Roots.java is a class and program that takes in a quadratic function
 * and determines if valid roots can be calculated and prints them
 * 
 * Begun by: Serita Nelesen
 * Completed by: Sinai Park (sp46)
 * Date: March 9 2020
 ***************************************************************/

import java.util.Scanner;

// java class Roots
public class Roots
{
  // main program
  public static void main(String[] args)
    {
      Scanner keyboard = new Scanner(System.in);
      // prompt for the a value (second coefficient)
      System.out.println("\nTo compute the roots of the quadratic formula \ny = ax^2 + bx + c, \nenter the a value: ");
      double a_value = keyboard.nextDouble();
      
      // prompt for b value (second coefficient)
      System.out.println("\nEnter the b value: ");
      double b_value = keyboard.nextDouble();

      // prompt for c value (constant)
      System.out.println("\nEnter the c value: ");
      double c_value = keyboard.nextDouble();

      //Create a new array to store the two root values
      double [] rootlist = new double[2];
    

      //Call the quadraticRoots function to determine what are the roots, if there are any
		  boolean istrue = rootcalc(a_value, b_value, c_value, rootlist);

      //compute the roots of the function and print if the boolean is true

      if (istrue) 
      {
        System.out.println("\nThe roots are " + rootlist[0] + " and " + rootlist[1]);

      }
      
    }
  
  /* rootcalc() finds the roots of a quadratic equation
   * Receive: 	equation - the quadratic function to be evaluated
   * 		        
   * Returns:   true ---- roots, calculated by the quadratic formula
   *            false --- if b^2 - 4ac is (-) or if a is 0
   *****************************************************/
  // replace this line with a definition for rootcalc

    public static boolean rootcalc(double a, double b, double c, double[] rootlist)
    {
      if (a != 0) {
        double discriminant = (Math.pow(b, 2) - 4 * a * c); 
        if (discriminant >= 0) {
          rootlist[0] = (-b + Math.sqrt(discriminant))/(2*a);    //store the first root in the first array
          rootlist[1] = (-b - Math.sqrt(discriminant))/(2*a);    //store the first root in the first array
          return true;
        }
        else {    //roots are unreal numbers
          System.out.println("\nThe discriminatnt (b^2 - 4ac) is negative" );
          //double root1 = 0;
          //double root2 = 0;
          return false;
        }
      }
      else {    //if a is equal to 0
        System.out.println("\nThe coefficent of x^2 is a zero" );
        //double root1 = 0;
        //double root2 = 0;
        return false;
      }
    }
}
