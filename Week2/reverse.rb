puts "Enter a String"
str = gets.chomp
len = str.length
reverse = ''
for i in 1..len do
  reverse+=str[len - i]
end

puts "Reverse of #{str} is #{reverse}"
