/* NameTester.java is a 'driver' to test class Name.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student: Sinai Park(sp46)
 * Date: April 10 2020
 ************************************************************/


 import java.io.*;
 import java.util.Scanner;

public class TempTester  
{
  public static void main(String[] args)
   {
      Scanner keyboard = new Scanner(System.in);
      //set starting temp
      Temp start_temp = new Temp(35.6, 'F');

      // Prompt the user for the limit temp value
      System.out.println("Enter the start temp value:");
      start_temp.readTemp(keyboard);  
      //start_temp.printTemp();

      Temp limit_temp = new Temp(35.6, 'F');
      
	// Prompt the user for the limit temp value
      System.out.println("Enter the limit temp value:");
      limit_temp.readTemp(keyboard);

      // Prompt the user for the increment value
	System.out.println("Please enter the increment value: ");
	double increment = keyboard.nextDouble();

	char starting_scale = start_temp.getScale();


	// While loop to print out the temperature values in a table format in each scale
	while ( start_temp.less_than(limit_temp ) )
	{
	//in the first column print out the Fahrenheit degrees
	start_temp.toFarenheit();
	start_temp.printTemp();
	System.out.print("\t");
	
	//in the second column print out the Celsius degrees
	start_temp.toCelcius();
	start_temp.printTemp();
	System.out.print("\t");

	//in the third column print out the Kelvin degrees
	start_temp.toKelvin();
	start_temp.printTemp();
	System.out.print("\n");

	// return the starting scale back to that Scale to add inrement
	if ( starting_scale == 'F' || starting_scale == 'f' )
	{
		start_temp.toFarenheit();
	}

	if ( starting_scale == 'C' || starting_scale == 'c' )
	{
		start_temp.toCelcius();
	}

	if ( starting_scale == 'K' || starting_scale == 'k' )
	{
		start_temp.toKelvin();
	}

	// Increment the start_temp
	start_temp.raise(increment);
	}     

      //System.out.println("All tests passed!");
  }
}

