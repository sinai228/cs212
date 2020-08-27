# Name.rb has class Name wrapper around module
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sinai Park (sp46)
# Date: April 10 2020
####################################################

#wrap the class Name around
module Names
  class Name

    def initialize(first, middle, last)
      @first, @middle, @last = first, middle, last
    end

    attr_reader :first, :middle, :last

    def fullName
      @first + " " + @middle + " " + @last
    end

    def print
      puts fullName
      fullName
    end
  end
end
