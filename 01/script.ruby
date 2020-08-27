Script started on 2020-02-06 15:33:11-0500
c]0;sp46@gold12: ~/214/labs/01[01;32msp46@gold12[00m:[01;34m~/214/labs/01[00m$ cat circle_area.rb
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
#while print only extends the statement and allows other things to be added after the line is printed out ]0;sp46@gold12: ~/214/labs/01[01;32msp46@gold12[00m:[01;34m~/214/labs/01[00m$ ruby circle_area.rb
To compute the area of a circle,
 enter its radius: 1
The circle's area is: 3.1415927
]0;sp46@gold12: ~/214/labs/01[01;32msp46@gold12[00m:[01;34m~/214/labs/01[00m$ ruby circle_area.rb
To compute the area of a circle,
 enter its radius: 2
The circle's area is: 12.5663708
]0;sp46@gold12: ~/214/labs/01[01;32msp46@gold12[00m:[01;34m~/214/labs/01[00m$ ruby circle_area.rb
To compute the area of a circle,
 enter its radius: 2.5
The circle's area is: 19.634954375
]0;sp46@gold12: ~/214/labs/01[01;32msp46@gold12[00m:[01;34m~/214/labs/01[00m$ ruby circle_area.rb
To compute the area of a circle,
 enter its radius: 4.99999
The circle's area is: 78.53950334104417
]0;sp46@gold12: ~/214/labs/01[01;32msp46@gold12[00m:[01;34m~/214/labs/01[00m$ exit

Script done on 2020-02-06 15:33:41-0500
