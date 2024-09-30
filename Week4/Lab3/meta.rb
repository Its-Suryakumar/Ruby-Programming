class DynamicAttributes
    def initialize(attributes = {})
      attributes.each do |key, value|
        self.class.send(:define_method, key) do
          instance_variable_get("@#{key}")
        end
  
        self.class.send(:define_method, "#{key}=") do |val|
          instance_variable_set("@#{key}", val)
        end
  
        instance_variable_set("@#{key}", value)
      end
    end
  end
  
  person = DynamicAttributes.new(name: "Surya", age: 20)
  
  puts person.name  
  puts person.age   
  
  person.name = "Priyanka"
  person.age = 29
  
  puts person.name  
  puts person.age   
  