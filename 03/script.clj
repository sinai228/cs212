Script started on 2020-02-25 16:23:30-0500
]0;sp46@gold01: ~/214/projects/03/clojure[01;32msp46@gold01[00m:[01;34m~/214/projects/03/clojure[00m$ clojure -m letter_grades

Enter your average score: Execution error (NumberFormatException) at java.lang.Integer/parseInt (Integer.java:614).
null

Full report at:
/tmp/clojure-10809436918153405039.edn
]0;sp46@gold01: ~/214/projects/03/clojure[01;32msp46@gold01[00m:[01;34m~/214/projects/03/clojure[00m$ script scir  ript.clj
Script started, file is script.clj
]0;sp46@gold01: ~/214/projects/03/clojure[01;32msp46@gold01[00m:[01;34m~/214/projects/03/clojure[00m$ cat     cd src
]0;sp46@gold01: ~/214/projects/03/clojure/src[01;32msp46@gold01[00m:[01;34m~/214/projects/03/clojure/src[00m$ cat L letter_grades.l clj
;;;; letter_grades.clj is a driver for function yearCode.
;;;;
;;;; Input:  average value,  a integer, from 0 to 100
;;;; Output: the letter grade alphabet code corresponding to the integer.
;;;;         (assuming 90-100 is A, 80-90 is a B, etc).
;;;;
;;;; Usage: clojure -m letter_grades
;;;;
;;;; Created by: Sinai Park(sp46)
;;;; Date: Feb 25, 2020
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns letter_grades)                    ; name the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; letterGrade() returns letter grade alphabet code corresponding to the integer.
;;; Receive: average value, an integer
;;; Precondition: integers from 0 to 100, (assuming 90-100 is A, 80-90 is a B, etc).
;;; Return: the letter grade corresponding to integer.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn letterGrade [average]
   (cond 
      (> average 89) "A"  ;;;;90-100 is an A
      (> average 79) "B"  ;;;;80-89 is B 
      (> average 69) "C"  ;;;;70-79 is C
      (> average 59) "D"  ;;;;60-69 is D
   :else "F"              ;;;;0-59 is F
   )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Function -main() test-drives our letterGrade() function.
;;; Input: year: average value, an integer
;;; Output: the letter grade corresponding to integer.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
 (print "\nEnter your average score: ") (flush)
 (let
    [ average (Integer/parseInt(read-line)) ] ; read average (an integer)
    (println (letterGrade average) "\n")      ; display its code
 )
)]0;sp46@gold01: ~/214/projects/03/clojure/src[01;32msp46@gold01[00m:[01;34m~/214/projects/03/clojure/src[00m$ cd - -
/home/sp46/214/projects/03/clojure
]0;sp46@gold01: ~/214/projects/03/clojure[01;32msp46@gold01[00m:[01;34m~/214/projects/03/clojure[00m$ cd -at letter_grades.cljd src[Klojure -m letter_grades

Enter your average score: 37
F 

]0;sp46@gold01: ~/214/projects/03/clojure[01;32msp46@gold01[00m:[01;34m~/214/projects/03/clojure[00m$ clojure -m letter_grades
6
Enter your average score: 98   ^[[A^[[A^[[D^[[B                6
F 

]0;sp46@gold01: ~/214/projects/03/clojure[01;32msp46@gold01[00m:[01;34m~/214/projects/03/clojure[00m$ clojure -m letter_grades

Enter your average score: 71
C 

]0;sp46@gold01: ~/214/projects/03/clojure[01;32msp46@gold01[00m:[01;34m~/214/projects/03/clojure[00m$ clojure -m letter_grades
6
Enter your average score: 9
D 

]0;sp46@gold01: ~/214/projects/03/clojure[01;32msp46@gold01[00m:[01;34m~/214/projects/03/clojure[00m$ clojure -m letter_grades
99
Enter your average score: 
A 

]0;sp46@gold01: ~/214/projects/03/clojure[01;32msp46@gold01[00m:[01;34m~/214/projects/03/clojure[00m$ clojure -m letter_grades

Enter your average score: 81
B 

]0;sp46@gold01: ~/214/projects/03/clojure[01;32msp46@gold01[00m:[01;34m~/214/projects/03/clojure[00m$ exit
Script done, file is script.clj
]0;sp46@gold01: ~/214/projects/03/clojure[01;32msp46@gold01[00m:[01;34m~/214/projects/03/clojure[00m$ mb v --
mv: missing file operand
Try 'mv --help' for more information.
]0;sp46@gold01: ~/214/projects/03/clojure[01;32msp46@gold01[00m:[01;34m~/214/projects/03/clojure[00m$ mv script.clj ..
]0;sp46@gold01: ~/214/projects/03/clojure[01;32msp46@gold01[00m:[01;34m~/214/projects/03/clojure[00m$ c cd -
/home/sp46/214/projects/03
]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ c script script.java
Script started, file is script.java
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
Script done, file is script.java
]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ cat script.java script.ada script.clj.  script.ruby  > lab0    project 3  0 03=s  -results
]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ [Ka2ps project03-results
[project03-results (plain): 8 pages on 4 sheets]
request id is Calvin_uniFLOW-117 (0 file(s))
[Total: 8 pages on 4 sheets] sent to the default printer
[80 lines wrapped]
]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ exit
