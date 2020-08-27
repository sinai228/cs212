# Goose.rb | Defines the Goose class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sinai Park
# Date: APril 24 2020
####################################################

require './Bird.rb'

class Goose < Bird

######################################################
# call returns the sound that a Goose type makes       #
# Recieve: NONE                                      #
# Return: Honk!, a String                           #
######################################################
def call
	"Honk!"
end

end