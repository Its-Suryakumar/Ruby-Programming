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
 