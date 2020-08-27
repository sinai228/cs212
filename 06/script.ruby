Script started on 2020-03-17 01:58:47-0400
cat ]0;sp46@maroon30: ~/214/labs/06[01;32msp46@maroon30[00m:[01;34m~/214/labs/06[00m$ cat     cat script      averag.e   e.r   ge.rb
# average.rb averages the values of an array of doubles.
# Precondition: theArray is an array of numbers
# Output: the average of the values in theArray
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by:: Sinai Park(sp46)
# Date: March 16 2020
########################################################

###############################################
# sum() sums the values in an array
# Receive: anArray, an array of numbers
# Return: the sum of the values in anArray.
################################################

# Define sum() method here
def sum(anArray)
   total = 0.0
   #use the array each method to add up the numbers
   anArray.each { |x| total = x + total}
   #return the value of the sum
   return total
end

# Document and define average() method here
def average(anArray)
   if (anArray.size <= 0)
      0.0;
   else
      return sum(anArray) / anArray.size
   end
end 

def main
   # Define array0 as an Array containing no values
   array0 = []
   # Define array1 as an Array containing 9.0, 8.0, 7.0, 6.0
   array1 = [9.0, 8.0, 7.0, 6.0]

   puts "sum 0 is: #{ sum(array0) }\n"
   puts "sum 1 is: #{ sum(array1) }\n"

   puts "average 0 is: #{ average(array0) }\n"
   puts "average 1 is: #{ average(array1) }\n"
end

main]0;sp46@maroon30: ~/214/labs/06[01;32msp46@maroon30[00m:[01;34m~/214/labs/06[00m$ ruby average.cat   rb
sum 0 is: 0.0
sum 1 is: 30.0
average 0 is: 0.0
average 1 is: 7.5
]0;sp46@maroon30: ~/214/labs/06[01;32msp46@maroon30[00m:[01;34m~/214/labs/06[00m$ exit

Script done on 2020-03-17 01:59:11-0400
