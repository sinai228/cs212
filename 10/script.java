Script started on 2020-04-24 04:32:50-0400
]0;sp46@gold06: ~/214/labs/10/java[01;32msp46@gold06[00m:[01;34m~/214/labs/10/java[00m$ make Birds
javac -deprecation Birds.java
]0;sp46@gold06: ~/214/labs/10/java[01;32msp46@gold06[00m:[01;34m~/214/labs/10/java[00m$ java Birds

Welcome to the Bird Park!

Hawkeye Bird says Squaaaaaaaak!
Donald Duck says Quack!
Mother Goose Goose says Honk!
Woodsey Owl says Owwwwww!

]0;sp46@gold06: ~/214/labs/10/java[01;32msp46@gold06[00m:[01;34m~/214/labs/10/java[00m$ cat Birds.jaa va Bri  irds.=        
/* Birds.java illustrates inheritance and polymorphism.
 *
 * Begun by: Joel Adams, for CS 214 Lab 10 at Calvin College.
 * Completed by: Sinai Park
 * Date: April 24 2020
 *********************************************************/

public class Birds {
  
  public static void main(String[] args) {
      System.out.println("\nWelcome to the Bird Park!\n");

      Bird bird0 = new Bird();

      Bird bird1 = new Bird("Hawkeye");
      bird1.print();

      Duck bird2 = new Duck("Donald");
      bird2.print();

      Goose bird3 = new Goose("Mother Goose");
      bird3.print();

      Owl bird4 = new Owl("Woodsey");
      bird4.print();
      System.out.println();
    }
}

]0;sp46@gold06: ~/214/labs/10/java[01;32msp46@gold06[00m:[01;34m~/214/labs/10/java[00m$ cat Duck.java Good se.java Owl.java
/* Duck.java provides a Duck subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Sinai Park
 * Date: April 24 2020
 ******************************************************/

public class Duck extends Bird {

public Duck() {super();}

    
 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
public Duck(String name)
{
	super(name);
}


 /* A Duck's Call
  * Return: a duck-call ("Quack!").
  */
public String call()
{
	return "Quack!";
}

}

/* Goose.java provides a Goose subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Sinai Park
 * Date:April 24 2020
 ******************************************************/

public class Goose extends Bird {

public Goose() { super(); }

 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */

public Goose(String name)
{ 	
	super(name);
}

 /* A Goose's Call
  * Return: a goose-call ("Honk!").
  */
public String call()
{
	return "Honk!";
}
} 

/* Owl.java provides an Owl subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Sinai Park
 * Date: April 24 2020
 ******************************************************/

public class Owl extends Bird {

public Owl() { super(); }

 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
public Owl(String name)
{
	super(name);
}


 /* An Owl's Call
  * Return: an owl-call ("Whoo-hoo!").
  */
public String call()
{
	return "Owwwwww!";
}
} 

]0;sp46@gold06: ~/214/labs/10/java[01;32msp46@gold06[00m:[01;34m~/214/labs/10/java[00m$ exit

Script done on 2020-04-24 04:33:28-0400
