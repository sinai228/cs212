# Duck.rb | Defines the Duck class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sinai Park
# Date: APril 24 2020
####################################################

require './Bird.rb'

class Duck < Bird

######################################################
# call returns the sound that a DUck type makes       #
# Recieve: NONE                                      #
# Return: Whoo-hoo!, a String                           #
######################################################
def call
	"Quack!"
end

end