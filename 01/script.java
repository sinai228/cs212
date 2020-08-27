Script started on 2020-02-06 17:00:46-0500

/* RectangleArea.java computes the area of a rectangle.
 *
 * Input: The width and height of the rectangle.
 * Precondition: Both width and height are a positive numbers.
 * Output: The area of the rectangle.
 *
 * Programmed by: Sinai Park(sp46)
 * Date:Feb 6 2020
 **********************************************************/


import java.util.Scanner;  // include class for Scanner

public class RectangleArea {

     /* function rectangleArea() computes a rectangle's area, given its width and height.
      * Parameter: w, a double, h, a double
      * Precondition: w and h are not negative.
      * Returns: the area of the rectangle
      */
     public static double rectangleArea(double w, double h) {
        return w * h;               // return an expression
     } // rectangleArea method
	
  // main program
  public static void main(String[] args) {
      // prompt for radius
      System.out.println("\n\nTo compute the area of a rectangle,");
      System.out.print(" enter its width: ");

      // Create a connection named keyboard to standard in
      Scanner keyboard = new Scanner(System.in);

      //Get the number from the user
      double width = keyboard.nextDouble();

      System.out.print(" enter its height: ");

       //Get the number from the user
      double height = keyboard.nextDouble();

      // output area
      System.out.println("\nThe area is " + rectangleArea(width, height) + "\n");
      System.out.printf("The area is %f\n\n", rectangleArea(width, height));
      System.out.printf("The area is %.15f\n\n", rectangleArea(width, height));
  } // main method

} // class RectangleArea

j]0;sp46@gold12: ~/214/projects/01[01;32msp46@gold12[00m:[01;34m~/214/projects/01[00m$ java C[KRectangleArea.[K[Ka


To compute the area of a rectangle,
 enter its width: 3
 enter its height: 6

The area is 18.0

The area is 18.000000

The area is 18.000000000000000

]0;sp46@gold12: ~/214/projects/01[01;32msp46@gold12[00m:[01;34m~/214/projects/01[00m$ java RectangleArea


To compute the area of a rectangle,
 enter its width: 12.3
 enter its height: 45.6

The area is 560.88

The area is 560.880000

The area is 560.880000000000000


]0;sp46@gold12: ~/214/projects/01[01;32msp46@gold12[00m:[01;34m~/214/projects/01[00m$ 9.99[Kjava RectangleArea


To compute the area of a rectangle,
 enter its width: 9.9
 enter its height: 9.999

The area is 98.99010000000001

The area is 98.990100

The area is 98.990100000000010

]0;sp46@gold12: ~/214/projects/01[01;32msp46@gold12[00m:[01;34m~/214/projects/01[00m$ exit

Script done on 2020-02-06 17:02:37-0500
