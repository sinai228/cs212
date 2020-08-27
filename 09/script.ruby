Script started on 2020-04-17 03:18:38-0400
]0;sp46@gold06: ~/214/labs/09/ruby[01;32msp46@gold06[00m:[01;34m~/214/labs/09/ruby[00m$ mv script.ruby ..script script.ruby[7Pruby max.rb[1@List.rb
]0;sp46@gold06: ~/214/labs/09/ruby[01;32msp46@gold06[00m:[01;34m~/214/labs/09/ruby[00m$ ruby List.rbmv script.ruby ..script script.ruby[7Pruby max.rb
 99 88 77 66 55
Maximum of list1: 99
 55 66 77 88 99
Maximum of list2: 99
 55 77 99 88 66
Maximum of list3: 99
]0;sp46@gold06: ~/214/labs/09/ruby[01;32msp46@gold06[00m:[01;34m~/214/labs/09/ruby[00m$ cat LIst.rb      ist.rb
# List.rb implements a linked list structure in Ruby.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sinai Park (sp46)
# Date: April 17 2020
#######################################################

require 'test/unit/assertions'
include Test::Unit::Assertions

class List


   # initialize a List to be empty
   # Postcondition: first == nil and last == nil and length == 0

   def initialize
      @first = nil
      @last = nil
      @length = 0
   end
      # create reader method for length
      attr_reader :length


   # Replace this line with a declaration for class Node
   #  (and its methods)
   #creating a list of linked nodes
   class Node
      def initialize (item, link)
         @value = item
         @next = link
      end
      attr_reader :value
      attr_accessor :next
   end


   # Am I empty?
   # Return: length == 0
   def empty?
      @length == 0
   end
  
   # append a value to me
   # Receive: value, the item to be appended
   # Postcondition: my last item is value and
   #                 my length is one more than it was
   def append(value)
      newNode = Node.new(value, nil)

      if empty?
         @first = newNode
      else
         @last.next = newNode      
      end

      @last = newNode
      @length += 1
      self
   end


   # print my items
   # Postcondition: my items have been displayed to the screen

   def print()
      temp = @first
      while !temp.nil?
         printf " #{temp.value}"
         temp = temp.next
      end
   end 

   # find my maximum item
   # Return: my maximum item

  def max
   temp = @first
   maxValue = -99999

   while !temp.nil?
      if temp.value > maxValue then
         maxValue = temp.value 
      end  
      temp = temp.next
   end 
    maxValue
end




end

]0;sp46@gold06: ~/214/labs/09/ruby[01;32msp46@gold06[00m:[01;34m~/214/labs/09/ruby[00m$ cat max.rb
# max.rb tests a Ruby linked list.
#
# Begun by: Dr. Adams for CS 214 at Calvin College.
# Completed by:  Sinai Park (sp46)
# Date: April 17 2020

require './List'

list1 = List.new
list2 = List.new
list3 = List.new

list1.append(99).append(88).append(77).append(66).append(55)
list2.append(55).append(66).append(77).append(88).append(99)
list3.append(55).append(77).append(99).append(88).append(66)

list1.print 
puts
puts "Maximum of list1: #{list1.max}"

list2.print 
puts
puts "Maximum of list2: #{list2.max}"

list3.print 
puts
puts "Maximum of list3: #{list3.max}"

]0;sp46@gold06: ~/214/labs/09/ruby[01;32msp46@gold06[00m:[01;34m~/214/labs/09/ruby[00m$ exit

Script done on 2020-04-17 03:18:58-0400
