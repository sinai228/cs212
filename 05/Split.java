/* Split.java is a class and program that splits a string
 * into two substrings.
 * 
 * Begun by: Serita Nelesen
 * Completed by: Sinai Park(sp46)
 * Date: March 5 2020
 ***************************************************************/

import java.util.Scanner;

// java class Split
public class Split
{
  // main program
  public static void main(String[] args)
    {
      Scanner keyboard = new Scanner(System.in);
      // prompt for the string
      System.out.println("\nTo split a string, enter the string: ");
      String theString = keyboard.next();
      
      // prompt for splitting position
      System.out.println("\nEnter the split position: ");
      int position = keyboard.nextInt();

      //Create list, compute results and print
      String [] resultList = new String[2];
      splitter(theString, position, resultList);
      System.out.println("\nThe first part is " + resultList[0] + "\nand the second part is " + resultList[1]);
      
    }
  
  /* splitter() splits a string according to the position specified
   * Receive: 	theString - the string to be split
   * 	         	pos - the position at which to split
   *            resList - an array of strings in which to place results
   *****************************************************/
  // replace this line with a definition for splitter

  public static void splitter(String theString, int pos, String[] results)
  {
  // store the  substring into the array at index 0
   results[0] = theString.substring(0, pos);

   // store the second substring into the array at index 1
   results[1] = theString.substring(pos, theString.length());

  } 
}
