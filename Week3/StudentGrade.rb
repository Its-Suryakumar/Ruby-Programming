class Student
    def initialize(name, marks)
      @name = name
      @marks = marks
    end
  
    def calculate_grade
      case @marks
      when 90..100
        "S"
      when 80..89
        "A"
      when 70..79
        "B"
      when 60..69
        "C"
      when 50..59
        "D"
      when 40..49
        "E"
      when 0..39
        "F"
      else
        "Invalid marks"
      end
    end
  
    def display_grade
      grade = calculate_grade
      puts "#{@name}'s Grade: #{grade}"
    end
  end
  
  # Example usage
  puts "Enter student name:"
  name = gets.chomp
  
  puts "Enter marks (0-100):"
  marks = gets.chomp.to_i
  
  student = Student.new(name, marks)
  student.display_grade
  