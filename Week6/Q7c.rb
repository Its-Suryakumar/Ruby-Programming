thread = Thread.new do
    sum = 0
    1.upto(10) do |i|
      sum += i
    end
    sum
  end
  
  result = thread.value
  
  puts "The sum of numbers from 1 to 10 is: #{result}"