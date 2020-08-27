Script started on 2020-04-17 00:43:35-0400
]0;sp46@gold06: ~/214/labs/09/java[01;32msp46@gold06[00m:[01;34m~/214/labs/09/java[00m$ cat Max.java
/* Max.java finds the maximum values in Java linked lists.
 *
 * Begun by: Dr. Adams, CS 214 at Calvin College.
 * Completed by: Sinai Park(sp46)
 * Date: April 17 2020 
 */

import java.util.LinkedList;
import java.util.Iterator;
import java.util.Collections;

public class Max {               

  public static void main(String [] args) {
    // define list1, list2, list3 here ...

  LinkedList<Integer> list1 = new LinkedList<Integer>();      
  LinkedList<Integer> list2 = new LinkedList<Integer>();      
  LinkedList<Integer> list3 = new LinkedList<Integer>();  

    list1.add(99);    // 99, 88, 77, 66, 55
    list1.add(88);    // max is first
    list1.add(77);
    list1.add(66);  
    list1.add(55);

    list2.add(55);    // 55, 66, 77, 88, 99
    list2.add(66);    // max is last
    list2.add(77);  
    list2.add(88);  
    list2.add(99);  
  
    list3.add(55);    // 55, 77, 99, 88, 66
    list3.add(77);    // max is in the middle
    list3.add(99);  
    list3.add(88);  
    list3.add(66);  
  
    print(list1); 
    print(list2); 
    print(list3);

   System.out.println("The max value of list1 is: " + Collections.max(list1));
   System.out.println("The max value of list2 is: " + Collections.max(list2));
   System.out.println("The max value of list3 is: " + Collections.max(list3));
  }

  /** print() displays a LinkedList on the console.
   *
   * @param: aList, a LinkedList<Integer>
   * 
   * Postcondition: the Integer values in aList
   *                 have been displayed to System.out,
   *                 separated by spaces.
   */
    //function print takes a list and prints out all the values within that list
    public static void print(LinkedList<Integer> aList){
      Iterator<Integer> listIterator = aList.iterator();
      while (listIterator.hasNext()) {
        System.out.print(listIterator.next() + " ");
      }
      System.out.print("\n");
    }
}

]0;sp46@gold06: ~/214/labs/09/java[01;32msp46@gold06[00m:[01;34m~/214/labs/09/java[00m$ cat Max.javascript.java script.ada script.clojure script..ruby > proj08-results[A]0;sp46@gold06: ~/214/labs/09/java[01;32msp46@gold06[00m:[01;34m~/214/labs/09/java[00m$ c[30Pd 214/projects/08
[K[A]0;sp46@gold06: ~/214/labs/09/java[01;32msp46@gold06[00m:[01;34m~/214/labs/09/java[00m$ cd 214/projects/08at script.java script.ada script.clojure script..ruby > proj08-results[A]0;sp46@gold06: ~/214/labs/09/java[01;32msp46@gold06[00m:[01;34m~/214/labs/09/java[00m$ cat Max.java[K
[K[A]0;sp46@gold06: ~/214/labs/09/java[01;32msp46@gold06[00m:[01;34m~/214/labs/09/java[00m$ cat Max.java[Kjavac -deprecation Max.java
]0;sp46@gold06: ~/214/labs/09/java[01;32msp46@gold06[00m:[01;34m~/214/labs/09/java[00m$ java Max
99 88 77 66 55 
55 66 77 88 99 
55 77 99 88 66 
The max value of list1 is: 99
The max value of list2 is: 99
The max value of list3 is: 99
]0;sp46@gold06: ~/214/labs/09/java[01;32msp46@gold06[00m:[01;34m~/214/labs/09/java[00m$ exit

Script done on 2020-04-17 00:43:58-0400
