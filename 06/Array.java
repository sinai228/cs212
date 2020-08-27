/* Array.java is a driver for method printarray() and readarray().
 *
 * Started by: Prof. Adams, for CS 214 at Calvin College
 *
 * Student Name: Sinai Park(sp46)
 * Date: March 18 2020
 *
 * Prompts the user for a input size of an array
 * prints the array, and 
 * Precondition: theArray, is an array of double values, 
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
   * Receive: anArray, an array of doubles, size, a user input value, and keyboard
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
   * Receive: anArray, an array of doubles, size, a user input value, and keyboard
   * Return: void, but complete anArray with filled-in values
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



