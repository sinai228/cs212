/*LetterGrade.java is a driver for function letterGrade()
 *
 * Created by Sinai Park(sp46)
 * Date: Feb 24 2020
 * ****************************************************/

import java.util.Scanner;

public class LetterGrade{

public static void main(String[] args) {
   Scanner keyboard = new Scanner(System.in);

   System.out.println("\nEnter your integer score: ");	//Prompt for an integer score from user


   String number = keyboard.next();          // read the number as a string
   int average = Integer.parseInt(number);	//convert the score to int
   System.out.println(letterGrade(average)); // display its code
   }


   /***************************************************************
    * letterGrade() converts an integer number into a letter grade.
    *
    * Receive: average value,  a integer 
    * PRE: integers is from 0 to 100, (assuming 90-100 is A, 80-90 is a B, etc).
    * Return: the letter grade alphabet code corresponding to the integer.
    */

    public static String letterGrade(int average)
    {
       switch (average / 10)
       {
         //90-100 is an A
          case 10: case 9:
             return "A";
         //80-89 is B 
          case 8:
             return "B";
         //70-79 is C 
          case 7:
             return "C";
          case 6:
         //60-69 is D
             return "D";
         //0-59 is F
          default:
             return "F";
       }
    }
   }
