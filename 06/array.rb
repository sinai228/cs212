# average.rb is a driver for method printarray() and readarray().
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by:: Sinai Park(sp46)
# Date: March 18 2020
########################################################

###############################################
# printArray() is a method that prints all the values in the array, with a new line
# in an array of doubles.
# Receive: anArray, an array of doubles, size, a user input value
# Return: the list of the values in anArray.
################################################

def printArray(anArray, size)
 puts "The values inside the array are: "
 #resulting array values
 for i in 0..size
   puts anArray[i]
 end
end

###############################################
# readArray() is a method that fills the values inside the array with given input values
# in an array.
# Receive: anArray, an array of doubles, size, a user input value
# Return: void, but complete anArray with filled-in values
###############################################

def readArray(anArray, size)
   puts "Please enter #{size.to_i} values for the array: "

   #For loop to put the user input into the array
	for i in 0..size-1
		element = gets.chomp.to_f
		anArray[i] = element
   end
end 

def main
   # ask for the user input of the size of the array
	print "\nEnter the size of the array: "
	size = gets.chomp.to_f     #change into float

	# make a new array with the size from the user
	array = Array.new(size)

	# Call the fuctionsreadArray() and printArray()
	readArray(array, size)
	printArray(array, size)
end

main