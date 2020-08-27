Script started on 2020-04-08 11:03:26-0400
]0;sp46@gold09: ~/214/projects/07[01;32msp46@gold09[00m:[01;34m~/214/projects/07[00m$ cat NameTester.rb
# NameTester.rb tests class Name and its operations
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sinai Park (sp46)
# Date: April 1 2020
####################################################

require 'test/unit/assertions'   # needed for assert
include Test::Unit::Assertions

class Name

   def initialize(first, middle, last)
     @first, @middle, @last = first, middle, last
   end
   #shortcut function of all the "getter" functions
   attr_reader :first, :middle, :last

   #function fullName() to return the full name of a type Name
   def fullName()
      return first + " " + middle + " " + last
   end
   
   #function print() to print the full name to the consoles
   def print()
      puts ( fullName() )
      fullName()
   end


   #shortcut function of all the "set[nameorder]" functions
   attr_writer :first, :middle, :last

   #function lfmi() prints the full name of a type Name in last, first, middile initial order
   def lfmi()
      return last + " " + first + " " + middle[0] 
   end

   #function readName() reads in first, middle, last names from user input
   def readName()
      puts ("Please enter the first name: ")
      @first = gets.chomp
      puts ("Please enter the middle name: ")
      @middle = gets.chomp
      puts ("Please enter the last name: ")
      @last = gets.chomp
   end


end


def testName
   name = Name.new("John", "Paul", "Jones")

   assert name.first == "John", "first failed"
   assert name.middle == "Paul", "middle failed"
   assert name.last == "Jones", "last failed"
   assert name.fullName == "John Paul Jones", "fullName failed"
   assert name.print == "John Paul Jones", "print failed"

   name.first = "Nathan"
   name.middle = "Yeol"
   name.last = "Smith"

   assert name.first == "Nathan", "first failed"
   assert name.middle == "Yeol", "middle failed"
   assert name.last == "Smith", "last failed"

   assert name.fullName == "Nathan Yeol Smith", "fullname failed"
   assert name.print == "Nathan Yeol Smith", "fullname failed"
   assert name.lfmi == "Smith Nathan Y", "lfmi failed"

   name.readName
   assert name.fullName != "Nathan Yeol Smith", "readName failed"

   
   print "All tests passed!\n"
end

testName

]0;sp46@gold09: ~/214/projects/07[01;32msp46@gold09[00m:[01;34m~/214/projects/07[00m$ ruby NameTester.rb
John Paul Jones
Nathan Yeol Smith
Please enter the first name: 
Bluetoosh  th
Please enter the middle name: 
Ear
Please enter the last name: 
Phones
All tests passed!
]0;sp46@gold09: ~/214/projects/07[01;32msp46@gold09[00m:[01;34m~/214/projects/07[00m$ exit

Script done on 2020-04-08 11:04:00-0400
