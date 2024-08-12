class Dog
    def initialize(name, breed)
      @name = name
      @breed = breed
    end
  
    def fetch(item)
      puts "#{@name} fetches the #{item}."
    end
  
    def bark
      puts "#{@breed} barks Woof woof!"
    end
end
  
my_dog = Dog.new("Tommy", "Golden Retriever")

my_dog.fetch("Ball") 
my_dog.bark
  