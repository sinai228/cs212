Script started on 2020-03-30 23:21:11-0400
]0;sp46@gold09: ~/214/labs/07[01;32msp46@gold09[00m:[01;34m~/214/labs/07[00m$ cat NameTester.java
/* NameTester.java is a 'driver' to test class Name.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student: Sinai Park(sp46)
 * Date: March 25 2020
 ************************************************************/

public class NameTester  
{
  public static void main(String[] args)
  {
      Name aName = new Name("John", "Paul", "Jones");

      assert aName.getFirst().equals("John") ;
      assert aName.getMiddle().equals("Paul") ;
      assert aName.getLast().equals("Jones") ;

      System.out.println(aName);
      assert aName.toString().equals("John Paul Jones");

      System.out.println("All tests passed!");
  }
}

// Replace this line with the declaration of class Name...

class Name
   {

      private String myFirst,
                     myMiddle,
                     myLast;

     /***************************************************
     * Name constructs a name from three strings.      *
     * Receive: first, middle and last, three strings. *
     * Return: the triplet (first middle last).        *
     ***************************************************/
      public Name(String first, String middle, String last)
      {
        myFirst = first;
        myMiddle = middle;
        myLast = last;
      }
      //getFirst() returns the first name of the Name object          
      public String getFirst()
      {
         return myFirst;
      }
      //getMiddle() returns the middle name of the Name object
      public String getMiddle()
      {
         return myMiddle;
      }
      //getLast() returns the last name of the Name object
      public String getLast()
      {
         return myLast;
      }
      //toString() displays the Name object in string
      public String toString()
      {
         return myFirst + ' ' + myMiddle + ' ' + myLast;
      }
      //print() prints out the string object to the console
      public void print() {
         System.out.println( toString() );
      }


      //Entering make clean made the files Name.class and NameTester.class to erase from the lab directory
      //but entering the make java command made these two files complie and show up again

};
]0;sp46@gold09: ~/214/labs/07[01;32msp46@gold09[00m:[01;34m~/214/labs/07[00m$ make java
javac -deprecation NameTester.java
]0;sp46@gold09: ~/214/labs/07[01;32msp46@gold09[00m:[01;34m~/214/labs/07[00m$ java NameTester
John Paul Jones
All tests passed!
]0;sp46@gold09: ~/214/labs/07[01;32msp46@gold09[00m:[01;34m~/214/labs/07[00m$ exit

Script done on 2020-03-30 23:21:38-0400
