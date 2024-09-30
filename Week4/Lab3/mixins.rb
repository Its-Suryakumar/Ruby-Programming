module Walkable
   def walk
     puts "#{self.class} is walking."
   end
 end
 
 class Human
   include Walkable
 end
 
 class Dog
   include Walkable
 end
 
 class Robot
   include Walkable
 end
 
 human = Human.new
 dog = Dog.new
 robot = Robot.new
 
 human.walk  
 dog.walk    
 robot.walk  
