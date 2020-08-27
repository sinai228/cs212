Script started on 2020-04-14 05:28:35-0400
]0;sp46@gold09: ~/214/projects/08/java[01;32msp46@gold09[00m:[01;34m~/214/projects/08/java[00m$ cat name    Temp.java
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
]0;sp46@gold09: ~/214/projects/08/java[01;32msp46@gold09[00m:[01;34m~/214/projects/08/java[00m$ cat N TempTester.java
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

]0;sp46@gold09: ~/214/projects/08/java[01;32msp46@gold09[00m:[01;34m~/214/projects/08/java[00m$ cat TempTester.java[6P.java[6@Tester.java[6P.javajava TempTester
Enter the start temp value:
Please enter the temperature value with scale: 
1 0 f
Enter the limit temp value:
Please enter the temperature value with scale: 
100 c
Please enter the increment value: 
2.5
0.0 f	-17.77777777777778 C	255.3722222222222 K
2.5000000000000107 F	-16.388888888888882 C	256.7611111111111 K
5.000000000000057 F	-14.99999999999997 C	258.15000000000003 K
7.500000000000103 F	-13.611111111111054 C	259.53888888888895 K
10.000000000000146 F	-12.222222222222141 C	260.92777777777786 K
12.500000000000192 F	-10.833333333333227 C	262.3166666666668 K
15.000000000000238 F	-9.444444444444313 C	263.7055555555557 K
17.500000000000284 F	-8.055555555555397 C	265.0944444444446 K
20.000000000000327 F	-6.666666666666486 C	266.4833333333335 K
22.500000000000377 F	-5.277777777777569 C	267.87222222222243 K
25.00000000000042 F	-3.888888888888656 C	269.26111111111135 K
27.500000000000465 F	-2.4999999999997415 C	270.65000000000026 K
30.00000000000051 F	-1.111111111110827 C	272.0388888888892 K
32.500000000000554 F	0.2777777777780857 C	273.4277777777781 K
35.000000000000604 F	1.6666666666670023 C	274.816666666667 K
37.50000000000065 F	3.055555555555915 C	276.2055555555559 K
40.000000000000696 F	4.444444444444832 C	277.59444444444483 K
42.50000000000074 F	5.833333333333744 C	278.98333333333375 K
45.00000000000078 F	7.222222222222657 C	280.37222222222266 K
47.50000000000083 F	8.611111111111573 C	281.7611111111116 K
50.000000000000874 F	10.000000000000487 C	283.1500000000005 K
52.500000000000924 F	11.388888888889403 C	284.5388888888894 K
55.000000000000966 F	12.777777777778315 C	285.9277777777783 K
57.50000000000101 F	14.166666666667227 C	287.31666666666723 K
60.00000000000106 F	15.555555555556145 C	288.70555555555615 K
62.50000000000111 F	16.94444444444506 C	290.09444444444506 K
65.00000000000115 F	18.333333333333975 C	291.483333333334 K
67.5000000000012 F	19.722222222222886 C	292.8722222222229 K
70.00000000000125 F	21.111111111111807 C	294.2611111111118 K
72.50000000000128 F	22.50000000000071 C	295.65000000000066 K
75.00000000000122 F	23.888888888889568 C	297.0388888888896 K
77.50000000000128 F	25.27777777777849 C	298.4277777777785 K
80.00000000000132 F	26.666666666667403 C	299.8166666666674 K
82.50000000000136 F	28.055555555556314 C	301.2055555555563 K
85.00000000000142 F	29.444444444445235 C	302.59444444444523 K
87.50000000000145 F	30.83333333333414 C	303.98333333333414 K
90.0000000000015 F	32.22222222222306 C	305.37222222222306 K
92.50000000000155 F	33.611111111111974 C	306.761111111112 K
95.00000000000159 F	35.00000000000089 C	308.1500000000009 K
97.50000000000165 F	36.38888888888981 C	309.5388888888898 K
100.00000000000169 F	37.77777777777872 C	310.9277777777787 K
102.50000000000173 F	39.16666666666763 C	312.31666666666763 K
105.00000000000178 F	40.555555555556545 C	313.70555555555654 K
107.50000000000182 F	41.94444444444546 C	315.09444444444546 K
110.00000000000186 F	43.333333333334366 C	316.4833333333344 K
112.50000000000192 F	44.72222222222329 C	317.8722222222233 K
115.00000000000196 F	46.1111111111122 C	319.2611111111122 K
117.500000000002 F	47.500000000001116 C	320.6500000000011 K
120.00000000000205 F	48.88888888889003 C	322.03888888889 K
122.50000000000209 F	50.277777777778944 C	323.42777777777894 K
125.00000000000215 F	51.66666666666786 C	324.81666666666786 K
127.50000000000219 F	53.05555555555677 C	326.20555555555677 K
130.00000000000222 F	54.44444444444568 C	327.5944444444457 K
132.50000000000227 F	55.8333333333346 C	328.9833333333346 K
135.00000000000233 F	57.22222222222352 C	330.3722222222235 K
137.5000000000024 F	58.61111111111244 C	331.7611111111124 K
140.00000000000242 F	60.00000000000134 C	333.15000000000134 K
142.50000000000244 F	61.38888888889025 C	334.53888888889026 K
145.0000000000025 F	62.77777777777917 C	335.92777777777917 K
147.50000000000256 F	64.16666666666809 C	337.3166666666681 K
150.00000000000261 F	65.555555555557 C	338.705555555557 K
152.50000000000264 F	66.94444444444592 C	340.0944444444459 K
155.00000000000267 F	68.33333333333482 C	341.4833333333348 K
157.50000000000273 F	69.72222222222373 C	342.87222222222374 K
160.00000000000279 F	71.11111111111266 C	344.26111111111265 K
162.5000000000028 F	72.50000000000156 C	345.65000000000157 K
165.00000000000287 F	73.88888888889049 C	347.0388888888905 K
167.50000000000293 F	75.2777777777794 C	348.4277777777794 K
170.00000000000296 F	76.6666666666683 C	349.8166666666683 K
172.500000000003 F	78.05555555555723 C	351.2055555555572 K
175.00000000000304 F	79.44444444444613 C	352.59444444444614 K
177.5000000000031 F	80.83333333333506 C	353.98333333333505 K
180.00000000000315 F	82.22222222222398 C	355.37222222222397 K
182.50000000000318 F	83.61111111111288 C	356.7611111111129 K
185.00000000000324 F	85.0000000000018 C	358.1500000000018 K
187.50000000000327 F	86.3888888888907 C	359.5388888888907 K
190.00000000000333 F	87.77777777777963 C	360.9277777777796 K
192.50000000000338 F	89.16666666666855 C	362.31666666666854 K
195.0000000000034 F	90.55555555555746 C	363.70555555555745 K
197.50000000000347 F	91.94444444444638 C	365.09444444444637 K
200.0000000000035 F	93.33333333333528 C	366.4833333333353 K
202.50000000000355 F	94.7222222222242 C	367.8722222222242 K
205.0000000000036 F	96.11111111111312 C	369.2611111111131 K
207.50000000000364 F	97.50000000000203 C	370.650000000002 K
210.0000000000037 F	98.88888888889095 C	372.03888888889094 K
]0;sp46@gold09: ~/214/projects/08/java[01;32msp46@gold09[00m:[01;34m~/214/projects/08/java[00m$ java TempTester
Enter the start temp value:
Please enter the temperature value with scale: 
0 k
Enter the limit temp value:
Please enter the temperature value with scale: 
212 f
Please enter the increment value: 
20.0
-459.66999999999996 F	-273.15 C	0.0 K
-423.66999999999996 F	-253.14999999999998 C	20.0 K
-387.66999999999996 F	-233.14999999999998 C	40.0 K
-351.66999999999996 F	-213.14999999999998 C	60.0 K
-315.66999999999996 F	-193.14999999999998 C	80.0 K
-279.66999999999996 F	-173.14999999999998 C	100.0 K
-243.66999999999996 F	-153.14999999999998 C	120.0 K
-207.66999999999996 F	-133.14999999999998 C	140.0 K
-171.66999999999996 F	-113.14999999999998 C	160.0 K
-135.66999999999996 F	-93.14999999999998 C	180.0 K
-99.66999999999996 F	-73.14999999999998 C	200.0 K
-63.66999999999996 F	-53.14999999999998 C	220.0 K
-27.66999999999996 F	-33.14999999999998 C	240.0 K
8.330000000000041 F	-13.149999999999977 C	260.0 K
44.33000000000004 F	6.850000000000023 C	280.0 K
80.33000000000004 F	26.850000000000023 C	300.0 K
116.33000000000004 F	46.85000000000002 C	320.0 K
152.33000000000004 F	66.85000000000002 C	340.0 K
188.33000000000004 F	86.85000000000002 C	360.0 K
]0;sp46@gold09: ~/214/projects/08/java[01;32msp46@gold09[00m:[01;34m~/214/projects/08/java[00m$ exit

Script done on 2020-04-14 05:31:38-0400
