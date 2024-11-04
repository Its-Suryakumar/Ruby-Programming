counter = Fiber.new do
    count = 0
    loop do
      count += 1
      Fiber.yield(count)
    end
  end
  
  puts "Basic counting"
  3.times do
    puts "Count: #{counter.resume}"
  end