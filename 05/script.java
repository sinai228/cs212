Script started on 2020-03-09 14:42:52-0400
c]0;sp46@gold11: ~/214/projects/05[01;32msp46@gold11[00m:[01;34m~/214/projects/05[00m$ cat Roots.java
/* Roots.java is a class and program that splits a string
 * into two substrings.
 * 
 * Begun by: Serita Nelesen
 * Completed by: 
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
]0;sp46@gold11: ~/214/projects/05[01;32msp46@gold11[00m:[01;34m~/214/projects/05[00m$ javac -deprea cation Roots.java
R]0;sp46@gold11: ~/214/projects/05[01;32msp46@gold11[00m:[01;34m~/214/projects/05[00m$ R jjava    ava Roots

To compute the roots of the quadratic formula 
y = ax^2 + bx + c, 
enter the a value: 
1

Enter the b value: 
9 -9

Enter the c value: 
20

The roots are 5.0 and 4.0
]0;sp46@gold11: ~/214/projects/05[01;32msp46@gold11[00m:[01;34m~/214/projects/05[00m$ java Roots

To compute the roots of the quadratic formula 
y = ax^2 + bx + c, 
enter the a value: 
0

Enter the b value: 
4

Enter the c value: 
1

The coefficent of x^2 is a zero
]0;sp46@gold11: ~/214/projects/05[01;32msp46@gold11[00m:[01;34m~/214/projects/05[00m$ java Roots

To compute the roots of the quadratic formula 
y = ax^2 + bx + c, 
enter the a value: 
1

Enter the b value: 
-3

Enter the c value: 
4

The discriminatnt (b^2 - 4ac) is negative
]0;sp46@gold11: ~/214/projects/05[01;32msp46@gold11[00m:[01;34m~/214/projects/05[00m$ exit

Script done on 2020-03-09 14:44:02-0400
