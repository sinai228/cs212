# Owl.rb | Defines the Owl class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by:Sinai Park
# Date: April 24 2020
####################################################

require './Bird.rb'

class Owl < Bird
	
######################################################
# call returns the sound that a Owl type makes       #
# Recieve: NONE                                      #
# Return: Whoo-hoo!, a String                           #
######################################################
def call
	"Whoo-hoo!"
end

end
