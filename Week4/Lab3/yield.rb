<<<<<<< HEAD
# a method that uses yield
def greet_with_yield
  puts "Inside the method before the block."
  yield if block_given?
  puts "Inside the method after the block."
end

greet_with_yield do
  puts "Hello from the block!"
end

puts "\n LAMBDA AND PROC \n"

# a lambda that returns a greeting message
greet_lambda = lambda { |name| "Hello, #{name} from the lambda!" }

puts greet_lambda.call("Alice")


# a proc that returns a farewell message
farewell_proc = Proc.new { |name| "Goodbye, #{name} from the proc!" }

puts farewell_proc.call("Bob")
=======
def yield_test
  puts "I'm inside the method."
  yield
  puts "I'm also inside the method."
end

yield_test { puts ">>> Yield Method" }
>>>>>>> 5fd0631123001f363869f96bfb50eedbddbffc28
