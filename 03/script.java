Script started on 2020-02-25 16:26:24-0500
]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ ja  cat   javac -deprecation LetterGrade. 
error: Class names, 'LetterGrade', are only accepted if annotation processing is explicitly requested
1 error
]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ javac -deprecation LetterGrade.java
]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ cat LetterGrade.java
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
]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ ./  j java LetterGrade

Enter your integer score: 
36
F
]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ java LetterGrade

Enter your integer score: 
62
D
]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ java LetterGrade

Enter your integer score: 
77
C
]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ java LetterGrade

Enter your integer score: 
81
B
]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ java LetterGrade

Enter your integer score: 
100
A
]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ exit

Script done on 2020-02-25 16:27:19-0500
