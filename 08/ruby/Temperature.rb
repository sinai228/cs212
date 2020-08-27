# Temperature.rb tests class Temp and its operations
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sinai Park (sp46)
# Date: April 15 2020
####################################################

require 'test/unit/assertions'   # needed for assert
include Test::Unit::Assertions

#wrap class Temperature around the module
module Temperatures 

  class Temperature

   def initialize(degree_val, scale_unit)
     @degrees, @scales = degree_val, scale_unit
   end

   #shortcut function of all the "getter" functions
   attr_reader :degrees, :scales

   #function to_farenheit() to return the temp to f
   def to_fahrenheit()
      if (@scales == "c" or @scales == "C") then
         @degrees = ((@degrees * (9.0/5.0)) + 32.0)
         @scales = "F"
      elsif (@scales == "K" or @scales == "k") then
         @degrees = ((@degrees - 273.15) * (9.0/5.0) + 32.0)
         @scales = "F"
      end 
   end

   #function to_celcius() to return the temp to c
   def to_celcius()
      if (@scales == "K" or @scales == "k") then
         @degrees = (@degrees - 273.15)
         @scales = "C"
      elsif (@scales == "f" or @scales == "F") then
         @degrees = ((@degrees - 32.0) * (5.0/9.0))
         @scales = "C"
      end
   end   
   
   #function to_kalvin() to return the temp to k
   def to_kelvin()
      if (@scales == "c" or @scales == "C") then
         @degrees = (@degrees + 273.15)
         @scales = "K"
      elsif (@scales == "f" or @scales == "F") then
         @degrees = ((@degrees - 32.0) * (5.0/9.0) + 273.15)
         @scales = "K"
      end
   end
   
   #function raise() to raise temp by the number of degrees of temp
   def raise_temp(degree)
      @degrees = @degrees + degree
   end

   #function lower() to lower by the number of degress received 
   def lower(degree)
      @degrees = @degrees - degree
 
   end

   #function equals() determines if the temp on the righthand and lefthand are equal (scales do not matter)
   def equals(other)
      temp_scale = @scales
      other.to_fahrenheit
      to_fahrenheit
     
      if (@degrees == other.degrees) then
         if (temp_scale == "C" or temp_scale == "C") then
            to_celcius
         elsif (temp_scale == "K" or temp_scale == "k") then
            to_kelvin
         end 
         return true
      else
         return false
      end
   end

   #function less_than() to compare if the degrees of temp is lower than that of the other
   def less_than(other)
      temp_scale = @scales
      other.to_fahrenheit
      to_fahrenheit
     
      if (@degrees < other.degrees) then
         if (temp_scale == "C" or temp_scale == "c") then
            to_celcius
         elsif (temp_scale == "K" or temp_scale == "k") then
            to_kelvin
         end 
         return true
      else
         return false
      end
   end

   #function readTemp() uses user input to update degrees and scales
   def readTemp()
      puts ("Please enter the temperature with scale: ")
      string = gets.chomp
      #split the string into an array
      string_array = string.split(" ")
      degree_input = string_array[0].to_f
      scale_input = string_array[1]

      @degrees = degree_input
      @scales = scale_input
   end

   #function printTemp() prints the current degrees and scales
   def printTemp()
      print (@degrees.to_s + " " + @scales.to_s)
   end

   end
end