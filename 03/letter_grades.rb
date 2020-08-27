#! /usr/bin/ruby
# letter_grades.rb translates an integer average to a letter grade
# Created by: Sinai Park(sp46)
# Date: Feb 25, 2020
################################################################

# Input:  average value,  a integer 
# Precondition: integers from 0 to 100, (assuming 90-100 is A, 80-90 is a B, etc).
# Output: the letter grade alphabet code corresponding to the integer.

def letterGrade average
   case (average/10)
   when 10 , 9 
      return "A" #90-100 is an A
   when 8 
      return "B"      #80-89 is B 
   when 7 
      return "C"      #70-79 is C 
   when 6 
      return "D"      #60-69 is D 
   else 
      return "F"        #0-59 is an F
   end
end

if __FILE__ == $0
   print "Enter the average number: "
   average = gets.chomp.to_i
   print "The letter grade is: "
   puts letterGrade(average)
end

