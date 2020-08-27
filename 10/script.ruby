Script started on 2020-04-24 11:28:36-0400
]0;sp46@gold06: ~/214/labs/10/ruby[01;32msp46@gold06[00m:[01;34m~/214/labs/10/ruby[00m$ ruby birds.rb

Welcome to the Bird Park!

HawkeyeBird says Squaaaaaaawk!
DonaldDuck says Quack!
MotherGoose says Honk!
WoodseyOwl says Whoo-hoo!


]0;sp46@gold06: ~/214/labs/10/ruby[01;32msp46@gold06[00m:[01;34m~/214/labs/10/ruby[00m$ cat birds.rb Bird.rb Duck.rb Goose.rb  Owl.rb
# birds.rb | Tests out the menagerie of bird classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sinai Park
# Date: April 24 2020
######################################################

require './Bird.rb'
require './Duck.rb'
require './Goose.rb'
require './Owl.rb'

puts "\nWelcome to the Bird Park!\n\n"

bird0 = Bird.new "Hawkeye"
bird0.print

bird1 = Duck.new "Donald"
bird1.print

bird2 = Goose.new "Mother"
bird2.print

bird3 = Owl.new "Woodsey"
bird3.print

puts "\n\n"# Bird.rb | Defines a Bird superclass 
#   to be extended by specific bird sub-classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by:Sinai Park
# Date:April 24 2020
####################################################

class Bird

  attr_reader :name

  def initialize(name)
    @name = name

  end

    def call
    'Squaaaaaaawk!'
  end

  def className
    self.class.to_s
  end

  def print
    puts name + className + " says " + call
  end

end
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

end# Goose.rb | Defines the Goose class which inherits attributes and methods
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

end# Owl.rb | Defines the Owl class which inherits attributes and methods
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
]0;sp46@gold06: ~/214/labs/10/ruby[01;32msp46@gold06[00m:[01;34m~/214/labs/10/ruby[00m$ [Kexit

Script done on 2020-04-24 11:28:56-0400
