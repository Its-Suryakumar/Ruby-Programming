class FactorialDispatcher
    def method_missing(method_name, *args)
      if method_name == :factorial
        handle_factorial(*args)
      else
        super
      end
    end
   
    def respond_to_missing?(method_name, include_private = false)
      method_name == :factorial || super
    end
   
    private
    def handle_factorial(n)
      if n.is_a?(Integer) && n >= 0
        result = factorial(n)
        puts "Result of factorial(#{n}): #{result}"
      else
        puts "Error: Factorial is only defined for non-negative integers."
      end
    end
   
    def factorial(n)
      (1..n).inject(:*) || 1
    end
  end
   
  dispatcher = FactorialDispatcher.new
   
  dispatcher.factorial(5)         
  dispatcher.factorial(10)        
  dispatcher.factorial(-1)         
  dispatcher.factorial('a')        
  puts dispatcher.respond_to?(:factorial)         
  puts dispatcher.respond_to?(:non_existent)      