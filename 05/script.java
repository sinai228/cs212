Script started on 2020-03-06 12:44:22-0500
]0;sp46@gold05: ~/214/labs/05[01;32msp46@gold05[00m:[01;34m~/214/labs/05[00m$ java Split.java[14@c -deprecation Split.java[15Pcat Split.java[15@javac -deprecation Split.java
]0;sp46@gold05: ~/214/labs/05[01;32msp46@gold05[00m:[01;34m~/214/labs/05[00m$ javac -deprecation Split.java Split[K

To split a string, enter the string: 
he  Exception in thread "main" java.util.NoSuchElementException
	at java.base/java.util.Scanner.throwFor(Scanner.java:937)
	at java.base/java.util.Scanner.next(Scanner.java:1478)
	at Split.main(Split.java:20)
]0;sp46@gold05: ~/214/labs/05[01;32msp46@gold05[00m:[01;34m~/214/labs/05[00m$ scip  ript script.ajva    java
Script started, file is script.java
]0;sp46@gold05: ~/214/labs/05[01;32msp46@gold05[00m:[01;34m~/214/labs/05[00m$ cat Split.java
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
]0;sp46@gold05: ~/214/labs/05[01;32msp46@gold05[00m:[01;34m~/214/labs/05[00m$ cat Split.java[4Pjava Split.java[14@c -deprecation Split.java
]0;sp46@gold05: ~/214/labs/05[01;32msp46@gold05[00m:[01;34m~/214/labs/05[00m$ javac -deprecation Split.java[15Pcat Split.java[4Pjava Split

To split a string, enter the string: 
hello

Enter the split position: 
0

The first part is 
and the second part is hello
]0;sp46@gold05: ~/214/labs/05[01;32msp46@gold05[00m:[01;34m~/214/labs/05[00m$ java Split

To split a string, enter the string: 
elo   hello 0  

Enter the split position: 
3

The first part is hel
and the second part is lo
]0;sp46@gold05: ~/214/labs/05[01;32msp46@gold05[00m:[01;34m~/214/labs/05[00m$ java Split

To split a string, enter the string: 
hello 5  

Enter the split position: 
5

The first part is hello
and the second part is 
]0;sp46@gold05: ~/214/labs/05[01;32msp46@gold05[00m:[01;34m~/214/labs/05[00m$ exit
Script done, file is script.java
]0;sp46@gold05: ~/214/labs/05[01;32msp46@gold05[00m:[01;34m~/214/labs/05[00m$ gnatmake split.adb
x86_64-linux-gnu-gcc-7 -c split.adb
split.adb:35:59: "," should be ";"
split.adb:52:04: no candidate interpretations match the actuals:
split.adb:52:04: too many arguments in call to "split"
gnatmake: "split.adb" compilation error
]0;sp46@gold05: ~/214/labs/05[01;32msp46@gold05[00m:[01;34m~/214/labs/05[00m$ gnatmake split.adb
x86_64-linux-gnu-gcc-7 -c split.adb
split.adb:35:96: identifier expected
gnatmake: "split.adb" compilation error
]0;sp46@gold05: ~/214/labs/05[01;32msp46@gold05[00m:[01;34m~/214/labs/05[00m$ gnatmake split.adb
x86_64-linux-gnu-gcc-7 -c split.adb
split.adb:38:57: actual for "Target" must be a variable
split.adb:41:54: actual for "Target" must be a variable
gnatmake: "split.adb" compilation error
]0;sp46@gold05: ~/214/labs/05[01;32msp46@gold05[00m:[01;34m~/214/labs/05[00m$ gnatmake split.adbscript script.javagnatmake split.adb
x86_64-linux-gnu-gcc-7 -c split.adb
split.adb:52:04: no candidate interpretations match the actuals:
split.adb:52:04: too many arguments in call to "split"
gnatmake: "split.adb" compilation error
]0;sp46@gold05: ~/214/labs/05[01;32msp46@gold05[00m:[01;34m~/214/labs/05[00m$ gnatmake split.adb
x86_64-linux-gnu-gcc-7 -c split.adb
x86_64-linux-gnu-gnatbind-7 -x split.ali
x86_64-linux-gnu-gnatlink-7 split.ali
]0;sp46@gold05: ~/214/labs/05[01;32msp46@gold05[00m:[01;34m~/214/labs/05[00m$ script scripta .ada
Script started, file is script.ada
cat split.a