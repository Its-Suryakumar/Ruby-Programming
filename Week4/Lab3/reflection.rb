class Person
    attr_accessor :name, :age
  
    def initialize(name, age)
      @name = name
      @age = age
    end
  
    def greet
      "Hello, my name is #{@name} and I am #{@age} years old."
    end
  end
  
  person = Person.new("Surya", 20)
  
  puts "Class: #{person.class}"
  
  puts "\nInstance Variables:"
  puts person.instance_variables
  
  puts "\nName (using reflection): #{person.instance_variable_get(:@name)}"
  
  person.instance_variable_set(:@name, "Priyanka")
  puts "\nUpdated Name (using reflection): #{person.name}"
  
  puts "\nDoes person respond to 'greet'? #{person.respond_to?(:greet)}"
  puts "\nGreet method output: #{person.greet}"
  