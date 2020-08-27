# roots.rb finds the roots of a quadratic equation and displays
#
# Receive: 	equation(a, b, c) - the quadratic function coefficients to be evaluated
# 		        
# Returns:   true ---- roots, calculated by the quadratic formula
#            false --- if b^2 - 4ac is (-) or if a is 0
#
# Begun by: Prof. Adams, for CS 214 at Calvin College.
# Completed by: Sinai Park (sp46)
# Date:March 9 2020
#################################################################


# rootcalc() finds the roots of a quadratic equation
# Receive: (double a, b, c) - the quadratic function 
#                             coefficients to be evaluated       
# PRE: the discriminant must not be a negative
#      the coefficient of x^2 must not be zero
# Passback: boolean true - valid, real roots
#                   false - invalid, roots
######################################################

# Replace this line with the definition of rootcalc()
def rootcalc(a, b, c) 
  #see if a, b, c compute valid roots
  if a!= 0
    discriminant = ((b*b) - 4 * a * c); 
    if (discriminant >= 0) 
	    rootlist = [((-b + Math.sqrt(discriminant))/2*a), ((-b - Math.sqrt(discriminant))/2*a), true] #store roots with a boolean value
    #discriminant is less than zero
    else 
      print "\nThe discriminatnt (b^2 - 4ac) is negative!" 
      rootlist = [0, 0, false]
    end
  #if a is equal to 0
  else
    print "\nThe coefficent of x^2 is a zero"
    rootlist = [0, 0, false]
  end
end

def main
  print "To compute the roots of the quadratic formula \ny = ax^2 + bx + c, \n"; 
  print "Enter the a value: "; 
  a = gets.to_i
  print "Enter the b value: "; 
  b = gets.to_i
  print "Enter the c value: "; 
  c = gets.to_i

  resultlist = rootcalc(a, b, c)
  if resultlist[2] == true
    puts "The first root is: #{resultlist[0]}\n";
    puts "and the second root is: #{resultlist[1]}";
  else
    print ": ERROR\n."
  end

end

main
