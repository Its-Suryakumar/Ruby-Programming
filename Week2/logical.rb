puts "Enter Age"
age = gets.chomp.to_i
if(age>18 and age<40)
  puts "Elgible for exam"
else
  puts "Not Eligible for exam"
end