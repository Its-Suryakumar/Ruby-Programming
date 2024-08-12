# Class variables begin with an @@ sign. Class variables are available across different objects shared by all the descendants of the class. They must be initialized before use.
class Person

    @@number_of_people = 0
    def initialize(first,last)
        @first_name = first
        @last_name = last
    end

    def fullname()
        puts "Full Name = #{@first_name} #{@last_name}"
    end

    def totalpeople()
        @@number_of_people+=1
        puts "Total number of people: #{@@number_of_people}"
    end
end

person1 = Person.new("Suryakumar","P")
person2 = Person.new("Akilesh", "S")
person1.fullname()
person1.totalpeople()
person2.fullname()
person2.totalpeople()
