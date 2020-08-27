Script started on 2020-03-05 10:10:22-0500
]0;sp46@gold10: ~/214/projects/04[01;32msp46@gold10[00m:[01;34m~/214/projects/04[00m$ cat c Factorial.java
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
]0;sp46@gold10: ~/214/projects/04[01;32msp46@gold10[00m:[01;34m~/214/projects/04[00m$ javac -deprecation Factorial.java
]0;sp46@gold10: ~/214/projects/04[01;32msp46@gold10[00m:[01;34m~/214/projects/04[00m$ java Factorial

To compute n!, enter n: 
2
The factorial of 2.0 is 
2.0
]0;sp46@gold10: ~/214/projects/04[01;32msp46@gold10[00m:[01;34m~/214/projects/04[00m$ java Factorial

To compute n!, enter n: 
4
The factorial of 4.0 is 
24.0
]0;sp46@gold10: ~/214/projects/04[01;32msp46@gold10[00m:[01;34m~/214/projects/04[00m$ java Factorial

To compute n!, enter n: 
6
The factorial of 6.0 is 
720.0
]0;sp46@gold10: ~/214/projects/04[01;32msp46@gold10[00m:[01;34m~/214/projects/04[00m$ java Factorial

To compute n!, enter n: 
8
The factorial of 8.0 is 
40320.0
]0;sp46@gold10: ~/214/projects/04[01;32msp46@gold10[00m:[01;34m~/214/projects/04[00m$ java Factorial

To compute n!, enter n: 
21
The factorial of 21.0 is 
5.109094217170944E19
]0;sp46@gold10: ~/214/projects/04[01;32msp46@gold10[00m:[01;34m~/214/projects/04[00m$ exit

Script done on 2020-03-05 10:11:02-0500
