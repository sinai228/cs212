/* Temp.java implements class Temperature.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student: Sinai Park(sp46)
 * Date: April 10 2020
 ************************************************************/


import java.io.*;
import java.util.Scanner;

class Temp
   {

      private double degrees;
      private char   scales;              

     /***************************************************
     * Temp constructs a name from three strings.      *
     * Receive: first, middle and last, three strings. *
     * Return: the triplet (first middle last).        *
     ***************************************************/
      public Temp(double degrees, char scale)
      {
        degrees = degrees;
        scales = scale;
      }
      //getDegrees() returns the degree value of the Temp object          
      public double getDegrees()
      {
         return degrees;
      }
      //getScale() returns the scale value of the Temp object
      public char getScale()
      {
         return scales;
      }

      //function toFarenheit() to return the temp to f
      public void toFarenheit() 
      {
      if (scales == 'c' || scales == 'C'){
	 degrees = (getDegrees() * 9.0/5.0) + 32.0;
	 scales = 'F';}
      else if (scales == 'K' || scales == 'k'){
	 degrees = (getDegrees() - 273.15) * (9.0/5.0) + 32.0;
	 scales = 'F';}
	}
     
      //function toCelcius() to return the temp to c
      public void toCelcius() 
      {
      if (scales == 'K' || scales == 'k')
         {
	 degrees = getDegrees() - 273.15;
         scales = 'C';
	 }
      else if (scales == 'f' || scales == 'F')
         {
	 degrees = (getDegrees() - 32.0) * (5.0/9.0);
         scales = 'C';
	 }
	}

      //function toKelvin() to return the temp to k
      public void toKelvin() 
      {
      if (scales == 'c' || scales == 'C'){
	 degrees = getDegrees() + 273.15;
	 scales = 'K';}
      else if (scales == 'F' || scales == 'f'){
	 degrees = ( getDegrees() - 32 ) * (5.0/9.0) + 273.15;
	 scales = 'K';}
	}

      //function readTemp() reads in the given value of temp from the user
      public void readTemp(Scanner keyboard)
      {
	 System.out.println("Please enter the temperature value with scale: ");
	 String temp = keyboard.nextLine();
	 String[] theArray = temp.split(" ");

	String degree_val = theArray[0];
	double degree_valid = Double.parseDouble(degree_val);

	String scale_char = theArray[1];
	char scale_valid = scale_char.charAt(0);

	if ( isValid(degree_valid, scale_valid) )
		{
			degrees = degree_valid;
			scales = scale_valid;
		}
		else {
			System.out.println("Invalid temperature");
		}
      }
	//function printTemp() reads in the given value of temp from the user
      public void printTemp()
      {
	 double degree_string = getDegrees();
	 System.out.print(Double.toString(degree_string) + " " + getScale() );
	 

      }
      //raise() doubles the amount of given degrees
      public void raise(double degree) 
      {
         degrees = degrees + degree;
      }

	//lower() doubles the amount of given degrees
	public void lower(double degree)
	{
		if ( isValid(degrees - degree, scales) )
			degrees = degrees - degree;
		else
			System.out.println("New temperature is invalid!");
	}

	//function isValid takes in a degree and scale to see if it is a valid temperature
	public boolean isValid(double Degrees, char Scale)
	{
		if ( Scale == 'K' || Scale == 'k' )
		{
			if ( Degrees < 0.0 )
				return false;
			else
				return true;
		}
		else if ( Scale == 'C' || Scale == 'c' )
		{
			if ( Degrees < -237.0 )
				return false;
			else
				return true;
		}
		else if ( Scale == 'F' || Scale == 'f' )
		{
			if ( Degrees < -459.0 )
				return false;
			else
				return true;
		}
		else
			return false;
	}
	
	//function equals() checks if the two temperatures are equal regardless of scale
	public boolean equals(Temp comp) 
	{
	char my_scale = getScale();

	//set both degrees to farenheight
	toFarenheit();
	comp.toFarenheit();

	//compare the degree values
	if (comp.getDegrees() == getDegrees() )
	{
	 if (my_scale == 'C' || my_scale == 'c') { 
		toCelcius();}
	else if (my_scale == 'K' || my_scale == 'k') { 
		toKelvin();}
	return true;
	} 
	else 
		return false;
	}

	//function less_than() checks if the left temperature is less than the right temp regardless of scale
	public boolean less_than(Temp comp) 
	{
	char my_scale = getScale();
	//set both degrees to farenheight
	toFarenheit();
	comp.toFarenheit();

	if (getDegrees() < comp.getDegrees() )
		{
		if (my_scale == 'C' || my_scale == 'c') { 
			toCelcius();}
		else if (my_scale == 'K' || my_scale == 'k') { 
			toKelvin();}
		return true; 
		}
		else
			return false;
	
	}
}
