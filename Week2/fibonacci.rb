first = 0
second = 1
next_t = 1

puts "Enter the number of terms"
n = gets.chomp.to_i

puts "The first #{n} numbers of the fibonacci series are: "
count = 1
while(count<=n+1)
    if(count<=1)
        next_t = count
    else
        puts next_t
        next_t = first+second
        first = second
        second = next_t
    end
    count+=1
end
