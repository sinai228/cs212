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
