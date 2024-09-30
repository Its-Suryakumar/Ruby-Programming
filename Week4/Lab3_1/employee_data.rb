employee_database = {}

def add_employee_to_database(database)
  puts "Enter the employee's name:"
  name = gets.chomp

  puts "Enter the employee's department:"
  department = gets.chomp

  puts "Enter the employee's salary:"
  salary = gets.chomp.to_f

  id = database.size + 1

  database[id] = { name: name, department: department, salary: salary }
end

def highest_paid_employee(database)
  database.max_by { |id, employee| employee[:salary] }
end

loop do
  add_employee_to_database(employee_database)

  puts "Do you want to add another employee? (yes/no)"
  answer = gets.chomp.downcase
  break if answer != 'yes'
end
highest_paid = highest_paid_employee(employee_database)

if highest_paid
  id, details = highest_paid
  puts "The highest-paid employee is:"
  puts "Name: #{details[:name]}"
  puts "Department: #{details[:department]}"
  puts "Salary: Rs.#{details[:salary]}"
else
  puts "No employees found in the database."
end