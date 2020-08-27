Script started on 2020-03-12 21:14:59-0400
]0;sp46@gold16: ~/214/labs/06[01;32msp46@gold16[00m:[01;34m~/214/labs/06[00m$ cat Average.java
/* Average.java is a driver for method avg().
 *
 * Started by: Prof. Adams, for CS 214 at Calvin College
 *
 * Student Name: Sinai Park(sp46)
 * Date: March 12 2020
 *
 * Precondition: theArray, is an array of double values.
 * Output: the average of the numbers in theArray.
 ***************************************************************/

import java.io.*;

public class Average
{
  public static void main(String[] args) {

      //declaring array0 and array1
      double[] array0 = null;
      double[] array1 = new double[]{9.0, 8.0, 7.0, 6.0};


      // output the average of the values in the arrays
      System.out.println("The first average is " + avg(array0));
      System.out.println("The second average is " + avg(array1));
  }
  

  /* sum() is a method that computes the sum of all the values
   * in an array of doubles.
   * Receive: anArray, an array of doubles.
   * Return: the sum of the values in anArray.
   ************************************************************/
  public static double sum(double[] theArray)
  {
    //resulting sum
    double total = 0.0;
    for (int i = 0; i < theArray.length; i++){
      total += theArray[i];
    }
    return total;
  }

  /* avg() is a method that computes the average of the values
   * in an array.
   * Receive: anArray, an array of doubles.
   * Return: the average of the values in anArray.
   **************************************************************/
  public static double avg(double anArray[])
  {
    if (anArray == null || anArray.length <= 0)   //check if array is null
      return 0.0;
    else 
      return sum(anArray) / anArray.length;   //divide the sum by the number of things in the array
  }
}

]0;sp46@gold16: ~/214/labs/06[01;32msp46@gold16[00m:[01;34m~/214/labs/06[00m$ cat Average.java[4Pjava Averagecat Average.java[Kjavac -deprecation Average.java
]0;sp46@gold16: ~/214/labs/06[01;32msp46@gold16[00m:[01;34m~/214/labs/06[00m$ java Average
The first average is 0.0
The second average is 7.5
]0;sp46@gold16: ~/214/labs/06[01;32msp46@gold16[00m:[01;34m~/214/labs/06[00m$ exit

Script done on 2020-03-12 21:15:41-0400
