running = true
thread = Thread.new do
  while running
    puts "Thread is running..."
    sleep(1) 
  end
  puts "Thread has stopped."
end

sleep(3) 
running = false

thread.join
puts "Main program has finished."