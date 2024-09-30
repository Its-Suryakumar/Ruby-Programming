fact = 1
num = gets.chomp.to_i
i = 1
while(i<=num)
    fact=fact*i
    i+=1
end
puts "Factorial of #{num} is #{fact}"