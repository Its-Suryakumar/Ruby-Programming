class Circle
    PI = 3.14159
  
    # Class method to calculate the area of a circle
    def self.area(radius)
      PI * radius * radius
    end
  end
  
  # Calling the class method
  puts Circle.area(5)
  