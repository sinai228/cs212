Script started on 2020-03-31 23:12:34-0400
]0;sp46@gold09: ~/214/labs/07[01;32msp46@gold09[00m:[01;34m~/214/labs/07[00m$ cat NameTet ster.rb
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
end


def testName
   name = Name.new("John", "Paul", "Jones")

   assert name.first == "John", "first failed"
   assert name.middle == "Paul", "middle failed"
   assert name.last == "Jones", "last failed"
   assert name.fullName == "John Paul Jones", "fullName failed"
   assert name.print == "John Paul Jones", "print failed"
   
   print "All tests passed!\n"
end

testName

]0;sp46@gold09: ~/214/labs/07[01;32msp46@gold09[00m:[01;34m~/214/labs/07[00m$ ruby NameTester.rb
John Paul Jones
All tests passed!
]0;sp46@gold09: ~/214/labs/07[01;32msp46@gold09[00m:[01;34m~/214/labs/07[00m$ exit

Script done on 2020-03-31 23:12:49-0400
