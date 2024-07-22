#Instance variables begin with an @ symbol. Instance variables are variables that belong to an object.

class Person
    def initialize(first,last)
        @first_name = first
        @last_name = last
    end

    def fullname()
        puts "Full Name = #{@first_name} #{@last_name}"
    end
end

person1 = Person.new("Suryakumar","P")
person1.fullname