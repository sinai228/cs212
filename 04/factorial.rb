#! /usr/bin/ruby
# Factorial.rb displays a table of logarithms
#
# Begun by: Prof. Adams, for CS 214 at Calvin College.
# Completed by: Sinai Park(sp46)
# Date: March 4 2020
#
# Input: a number, float.
# Precondition: the number must be a positive integer.
# Output: The nth factorial of the integer value n


if __FILE__ == $0
   print "To compute the n! factorial, enter the n value: "
#number gets convered into a floating point
   number = gets.chomp.to_f

   count = number  #set decremening value to number
   result = 1.0    #set initial value to 1 (resulting factorial)
#  Replace this line with a loop to display the factorial

   until (count == 0.0)

      # first multiply the nth nubmer to the resulting value variable
      
      result *= count

      # print out the answer using Ruby string in-lining
      

      #lastly, increment the start value
      count -= 1.0

   end
      print "The nth factorial of #{number} is #{result}"
      puts("\n")
end

