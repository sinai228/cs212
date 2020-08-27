/* Factorial.java displays the factorial of a given number
 *
 * Input: number n.
 * PRE: numer must be greater than zero
 * Output: A value that is the factorial of the number input, n
 * 
 * Begun by: Nelesen, for CS 214 at Calvin College.
 * Completed by: Sinai Park(sp46)
 * Date: March 2 2020
 ********************************************************/
import java.util.Scanner; // Get input

class Factorial{

  public static void main(String[] args) {
     
    Scanner keyboard = new Scanner(System.in);
    System.out.println("\nTo compute n!, enter n: ");
    double number = keyboard.nextDouble(); //the input integer is the number being calculated
   
    // computing the factorial in a for loop

    double result = 1;                 //store resulting factorial in result
    for (double i = number; i > 0; i--)//as i is number, start from it and decrement
    {
      result *= i;    //compute factorial in the for loop
    }
      System.out.println("The factorial of " + number + " is " ); //system output
      System.out.println(result);                                 //print the factorial
      
  }
}
