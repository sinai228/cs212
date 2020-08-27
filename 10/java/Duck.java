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

