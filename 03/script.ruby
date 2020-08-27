Script started on 2020-02-25 16:10:15-0500
]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ cat letter_grades.rb
#! /usr/bin/ruby
# letter_grades.rb translates an integer average to a letter grade
# Created by: Sinai Park(sp46)
# Date: Feb 25, 2020
################################################################

# Input:  average value,  a integer 
# Precondition: itegers from 0 to 100, (assuming 90-100 is A, 80-90 is a B, etc).
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

]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ cat letter_grades.rb[1@ruby letter_grades.rb
Enter the average number: 34
The letter grade is: F
]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ ruby letter_grades.rb
Enter the average number: 2 57
The letter grade is: F
]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ ruby letter_grades.rb
Enter the average number: 67
The letter grade is: D
]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ ruby letter_grades.rb
Enter the average number: 79
The letter grade is: C
]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ ruby letter_grades.rb
Enter the average number: 81
The letter grade is: B
]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ ruby letter_grades.rb
Enter the average number: 93
The letter grade is: A
]0;sp46@gold01: ~/214/projects/03[01;32msp46@gold01[00m:[01;34m~/214/projects/03[00m$ exit

Script done on 2020-02-25 16:10:50-0500
