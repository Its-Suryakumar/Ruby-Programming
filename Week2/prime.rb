puts "Enter a Number"
num = gets.chomp.to_i
prime = true
for i in (2..(num/2))
    if(num%i==0)
        prime = false
        break
    else
        prime = true
        next
    end
end
if(prime)
    puts "#{num} is a Prime Number"
else
    puts "#{num} is not a Prime Number"
end