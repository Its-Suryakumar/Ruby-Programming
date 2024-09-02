def grade_to_points(grade)
  case grade
  when 'S' then 10
  when 'A' then 9
  when 'B' then 8
  when 'C' then 7
  when 'D' then 6
  when 'F' then 0
  else 0
  end
end

def calculate_cgpa(students_grades)
  students_grades.each do |student, grades|
    total_points = grades.map { |grade| grade_to_points(grade) }.sum
    cgpa = total_points.to_f / grades.size
    
    puts "#{student}'s CGPA: #{cgpa.round(2)}"
  end
end

def get_student_grades
  students_grades = {}

  puts "Enter the number of students:"
  number_of_students = gets.chomp.to_i

  number_of_students.times do
    puts "Enter the student's name:"
    student_name = gets.chomp

    puts "Enter the grades for #{student_name} (separated by spaces):"
    grades = gets.chomp.split

    students_grades[student_name] = grades
  end

  students_grades
end

students_grades = get_student_grades
calculate_cgpa(students_grades)
