Script started on 2020-03-05 10:15:50-0500
]0;sp46@gold10: ~/214/projects/04[01;32msp46@gold10[00m:[01;34m~/214/projects/04[00m$ cat factorial.rb
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

]0;sp46@gold10: ~/214/projects/04[01;32msp46@gold10[00m:[01;34m~/214/projects/04[00m$ ruby factorial
factorial:1: Invalid char `\x7F' in expression
factorial:1: Invalid char `\x02' in expression
factorial:1: Invalid char `\x01' in expression
factorial:1: Invalid char `\x01' in expression
]0;sp46@gold10: ~/214/projects/04[01;32msp46@gold10[00m:[01;34m~/214/projects/04[00m$ ruby factorial.rb
To compute the n! factorial, enter the n value: 2
The nth factorial of 2.0 is 2.0
]0;sp46@gold10: ~/214/projects/04[01;32msp46@gold10[00m:[01;34m~/214/projects/04[00m$ ruby factorial.rb
To compute the n! factorial, enter the n value: 4
The nth factorial of 4.0 is 24.0
]0;sp46@gold10: ~/214/projects/04[01;32msp46@gold10[00m:[01;34m~/214/projects/04[00m$ ruby factorial.rb
To compute the n! factorial, enter the n value: 6
The nth factorial of 6.0 is 720.0
]0;sp46@gold10: ~/214/projects/04[01;32msp46@gold10[00m:[01;34m~/214/projects/04[00m$ ruby factorial.rb
To compute the n! factorial, enter the n value: 8
The nth factorial of 8.0 is 40320.0
]0;sp46@gold10: ~/214/projects/04[01;32msp46@gold10[00m:[01;34m~/214/projects/04[00m$ ruby factorial.rb
To compute the n! factorial, enter the n value: 21
The nth factorial of 21.0 is 5.109094217170944e+19
]0;sp46@gold10: ~/214/projects/04[01;32msp46@gold10[00m:[01;34m~/214/projects/04[00m$ exit

Script done on 2020-03-05 10:16:18-0500
