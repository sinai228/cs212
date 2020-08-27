Script started on 2020-03-18 19:29:26-0400
]0;sp46@maroon28: ~/214/projects/06[01;32msp46@maroon28[00m:[01;34m~/214/projects/06[00m$ cat Array.java
/* Array.java is a driver for method printarray().
 *
 * Started by: Prof. Adams, for CS 214 at Calvin College
 *
 * Student Name: Sinai Park(sp46)
 * Date: March 18 2020
 *
 * Prompts the user for a input size of an array
 * prints the array, and 
 * Precondition: theArray, is an array of double values.
 * Output: the average of the numbers in theArray.
 ***************************************************************/

import java.io.*;
import java.util.Scanner;

public class Array
{
  public static void main(String[] args) {

      
  // Create a new Scanner for user input
	Scanner keyboard = new Scanner(System.in);
	System.out.println("Enter the size of the array: ");
	
	// Read in the size of the array from the user
	int size = keyboard.nextInt();

	// Create an array with the user input size
	double[] anArray = new double[size];

	// Call readArray to fill the array, printArray to output the array
	readArray(anArray, size, keyboard);
	printArray(anArray, size, keyboard);
  }
  

  /* printArray() is a method that prints all the values in the array, with a new line
   * in an array of doubles.
   * Receive: anArray, an array of doubles.
   * Return: the list of the values in anArray.
   ************************************************************/
  public static void printArray(double[] anArray, int size, Scanner keyboard)
  {
    System.out.println("The values inside the array are: ");
    //resulting array values
    for (int i = 0; i < size; i++){
      System.out.println(anArray[i]);
    }
  }

  /* readArray() is a method that fills the values inside the array with given input values
   * in an array.
   * Receive: anArray, an array of doubles.
   * Return: void, or anArray with filled-in values
   **************************************************************/
  public static void readArray(double[] anArray, int size, Scanner keyboard)
  {
    System.out.println("Please enter " + size + " values for the array: ");

    // Fill in values of the theArray with given doubles
    for (int i = 0; i < size; i++) {
      anArray[i] = keyboard.nextDouble();  
    }
  }
}



]0;sp46@maroon28: ~/214/projects/06[01;32msp46@maroon28[00m:[01;34m~/214/projects/06[00m$ cat Array.javascript.java script.ada script.clojure scriptt.ruby > lab06-results[A]0;sp46@maroon28: ~/214/projects/06[01;32msp46@maroon28[00m:[01;34m~/214/projects/06[00m$ [29Pscript script.ruby
[K[A]0;sp46@maroon28: ~/214/projects/06[01;32msp46@maroon28[00m:[01;34m~/214/projects/06[00m$ script script.ruby[3Pruby average.rbls[Kruby average.rbscript script.rubycat script.java script.ada script.clojure scriptt.ruby > lab06-results[A]0;sp46@maroon28: ~/214/projects/06[01;32msp46@maroon28[00m:[01;34m~/214/projects/06[00m$ cat Array.java[K
[K[A]0;sp46@maroon28: ~/214/projects/06[01;32msp46@maroon28[00m:[01;34m~/214/projects/06[00m$ cat Array.java[Kjavac d -deprecation Array.java
]0;sp46@maroon28: ~/214/projects/06[01;32msp46@maroon28[00m:[01;34m~/214/projects/06[00m$ java Array
Enter the size of the array: 
5 4
Please enter 4 values for the array: 
9
8
7
6
The values inside the array are: 
9.0
8.0
7.0
6.0
]0;sp46@maroon28: ~/214/projects/06[01;32msp46@maroon28[00m:[01;34m~/214/projects/06[00m$ 3 java Arrayc -deprecation Array.java
]0;sp46@maroon28: ~/214/projects/06[01;32msp46@maroon28[00m:[01;34m~/214/projects/06[00m$ javac -deprecation Array.java Array[Kc -deprecation Array.java Array[K
Enter the size of the array: 
0
Please enter 0 values for the array: 
The values inside the array are: 
]0;sp46@maroon28: ~/214/projects/06[01;32msp46@maroon28[00m:[01;34m~/214/projects/06[00m$ java Array
Enter the size of the array: 
3
Please enter 3 values for the array: 
6236
8625
0005732
The values inside the array are: 
6236.0
8625.0
5732.0
]0;sp46@maroon28: ~/214/projects/06[01;32msp46@maroon28[00m:[01;34m~/214/projects/06[00m$ exit

Script done on 2020-03-18 19:30:26-0400
