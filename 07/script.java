Script started on 2020-05-12 11:38:58-0400
]0;sp46@gold19: ~/214/projects/07[01;32msp46@gold19[00m:[01;34m~/214/projects/07[00m$ cat NameTester.java
/* NameTester.java is a 'driver' to test class Name.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student: Sinai Park(sp46)
 * Date: April 1 2020
 ************************************************************/

 import java.io.*;
 import java.util.Scanner;

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
      assert aName.lfmi().equals("Jones John Paul");  //testing lfmi function

      //testing setFirst, setMiddle, setLast
      aName.setFirst("Michael") ;
      aName.setMiddle("Moses") ;
      aName.setLast("Smith");
      assert aName.getFirst().equals("Michael") ;
      assert aName.getMiddle().equals("Moses") ;
      assert aName.getLast().equals("Smith") ;

      System.out.println(aName);
      assert aName.toString().equals("Michael Moses Smith");
      assert aName.lfmi().equals("Smith Michael Moses");    //testing lfmi function

      //testing readName()
      Name test_Name = new Name("John", "Paul", "Jones");
      Scanner keyboard = new Scanner(System.in);

      test_Name.readName(keyboard);
      System.out.println(test_Name.toString());

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




      //setFirst() returns the first name of the Name object          
      public void setFirst(String newFirst)
      {
         myFirst = newFirst;
      
      }
      //setMiddle() returns the middle name of the Name object
      public void setMiddle(String newMiddle)
      {
         myMiddle = newMiddle;
      }
      //setLast() returns the last name of the Name object
      public void setLast(String newLast)
      {
         myLast = newLast;
      }
      //lfmi() displays the Name object in order of last, first, and middle
      public String lfmi()
      {
         return myLast + ' ' + myFirst + ' ' + myMiddle.charAt(0) ;
      }

      //readName() uses user input to receive input from user for myFirst, myMiddle, and myLast
      public void readName(Scanner keyboard)
      {
         System.out.println("Please enter the first name");
         myFirst = keyboard.next();
          
         System.out.println("Please enter the middle name");
         myMiddle = keyboard.next();

         System.out.println("Please enter the last name");
         myLast = keyboard.next();
      }


      //Entering make clean made the files Name.class and NameTester.class to erase from the lab directory
      //but entering the make java command made these two files complie and show up again

};
]0;sp46@gold19: ~/214/projects/07[01;32msp46@gold19[00m:[01;34m~/214/projects/07[00m$ javac -deprecation NameTester.java
]0;sp46@gold19: ~/214/projects/07[01;32msp46@gold19[00m:[01;34m~/214/projects/07[00m$ java NameTester
John Paul Jones
Michael Moses Smith
Please enter the first name
Mint eral
Please enter the middle name
Water
Please enter the last name
Bottle
Mineral Water Bottle
All tests passed!
]0;sp46@gold19: ~/214/projects/07[01;32msp46@gold19[00m:[01;34m~/214/projects/07[00m$ exit

Script done on 2020-05-12 11:39:41-0400
