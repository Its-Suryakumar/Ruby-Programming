i = 0
while(i<5)
    puts "Hello - #{i}"
    i+=1
    redo if(i==5)
end