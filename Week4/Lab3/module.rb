<<<<<<< HEAD
module MathOperations
   def add(a, b)
     a + b
   end
 
   def subtract(a, b)
     a - b
   end
 
   def multiply(a, b)
     a * b
   end
 
   def divide(a, b)
     return "Division by zero error" if b == 0
     a / b
   end
 end
 
 class Calculator
   include MathOperations
 end
 
 calc = Calculator.new
 
 puts calc.add(5, 3)        
 puts calc.subtract(5, 3)   
 puts calc.multiply(5, 3)   
 puts calc.divide(5, 0)     
 
=======
#!/usr/bin/ruby
$LOAD_PATH << '.'
require "support"

class Decade
include Week
   no_of_yrs = 10
   def no_of_months
      puts Week::FIRST_DAY
      number = 10*12
      puts number
   end
end
d1 = Decade.new
puts Week::FIRST_DAY
Week.weeks_in_month
Week.weeks_in_year
d1.no_of_months
>>>>>>> 5fd0631123001f363869f96bfb50eedbddbffc28
