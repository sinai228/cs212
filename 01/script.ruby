Script started on 2020-02-06 17:04:18-0500
]0;sp46@gold12: ~/214/projects/01[01;32msp46@gold12[00m:[01;34m~/214/projects/01[00m$ cat rec_r[Karea.rb
#! /usr/bin/ruby
# rec_area.rb computes the area of a rectangle given its radius
# 
# Input: the radius of a rectangle
# Precondition: the radius is not negative
# Output: the area of the rectangle.
#
# Begun by: Prof. Adams, for CS 214 at Calvin College.
# Completed by: Sinai Park(sp46)
# Date: Feb 6 2020
###############################################################

# function recArea returns a rectangle's area, given its radius
# Parameters: w, a number; h, a number
# Precondition: r > 0.
# Returns: the area of a rectangle whose width is w and height is h.
             
def recArea(w, h)             
    w * h              
end                           

if __FILE__ == $0                                   
   puts "To compute the area of a rectangle,"          
   print " enter its width: "                      
   width = gets.chomp.to_f    
   print " enter its height: "                      
   height = gets.chomp.to_f                         
   print "The rectangle's area is: "                   
   puts recArea(width, height)                          
end

#puts function folows with a new line
#while print only extends the statement and allows other things to be added after the line is printed out 
]0;sp46@gold12: ~/214/projects/01[01;32msp46@gold12[00m:[01;34m~/214/projects/01[00m$ ruby rec_r[Karea.rb
To compute the area of a rectangle,
 enter its width: 3
 enter its height: 6
The rectangle's area is: 18.0
]0;sp46@gold12: ~/214/projects/01[01;32msp46@gold12[00m:[01;34m~/214/projects/01[00m$ 12[K[Kruby rec_area.rb
To compute the area of a rectangle,
 enter its width: 12.3
 enter its height: 45.6
The rectangle's area is: 560.88
]0;sp46@gold12: ~/214/projects/01[01;32msp46@gold12[00m:[01;34m~/214/projects/01[00m$ ruby rec_area.rb
To compute the area of a rectangle,
 enter its width: 9.9
 enter its height: 9.99
The rectangle's area is: 98.90100000000001
]0;sp46@gold12: ~/214/projects/01[01;32msp46@gold12[00m:[01;34m~/214/projects/01[00m$ exit

Script done on 2020-02-06 17:04:55-0500
