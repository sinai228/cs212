# nameTester.rb tests class Name and its operations
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sinai Park (sp46)
# Date: April 10 2020
####################################################

require 'test/unit/assertions'
require './Temperature'
include Test::Unit::Assertions

def testTemp
   #initialize the starting and ending temperatures
   start = Temperatures::Temperature.new(30.0, 'F')
   limit = Temperatures::Temperature.new(30.0, 'F')
   puts("Starting Temperature")
   start.readTemp

   puts("Limiting Temperature")
   limit.readTemp

   puts ("Please enter the increment value: ")
   increment = gets.chomp.to_f
   starting_scale = start.scales

   # While loop to print out the temperature values in a table for each scale
	while start.less_than(limit) do
		
		# First print out the Fahrenheit degrees
		start.to_fahrenheit
		start.printTemp
		print("\t")

		# Second print out the Celsius degrees
		start.to_celcius
		start.printTemp
		print("\t")

		# Third print out the Kelvin degrees
		start.to_kelvin
		start.printTemp
		
		puts ("")
		# Determine the start scale to return it to its original format
		if ( starting_scale == 'F' or starting_scale == 'f' ) then
			start.to_fahrenheit
		elsif ( starting_scale == 'K' or starting_scale == 'k' ) then
			start.to_kelvin
		elsif ( starting_scale == 'C' or starting_scale == 'c' ) then
			start.to_celcius
		end

		# Increment the start
      start.raise_temp(increment)
    
	end
end

testTemp
