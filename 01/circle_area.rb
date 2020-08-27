#! /usr/bin/ruby
# circle_area.rb computes the area of a circle given its radius
# 
# Input: the radius of a circle
# Precondition: the radius is not negative
# Output: the area of the circle.
#
# Begun by: Prof. Adams, for CS 214 at Calvin College.
# Completed by: Sinai Park(sp46)
# Date: Feb 6 2020
###############################################################

# function circleArea returns a circle's area, given its radius
# Parameters: r, a number
# Precondition: r > 0.
# Returns: the area of a circle whose radius is r.
PI = 3.1415927                #pi value is set as constant
def circleArea(r)             #definition of function to compute the area of a circle
    PI * r ** 2               #computes area by pi*r^2
end                           # function ends

if __FILE__ == $0                                   #if file is being executed directly     
   puts "To compute the area of a circle,"          #prints out the statement
   print " enter its radius: "                      #prints out the statement and allows a user input value
   radius = gets.chomp.to_f                         #computes radius as a floating value
   print "The circle's area is: "                   #prints statement
   puts circleArea(radius)                          #adds the computed area after the statement
end

#puts function folows with a new line
#while print only extends the statement and allows other things to be added after the line is printed out 