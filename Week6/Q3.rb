main_thread_variable = "Main Thread Variable"

fiber = Fiber.new do
  fiber_variable = "Fiber Variable"
  puts "Inside Fiber: #{fiber_variable}"
  puts "Inside Fiber accessing main thread variable: #{main_thread_variable}"
end

threads = 3.times.map do |i|
  Thread.new do
    thread_variable = "Thread #{i + 1} Variable"
    puts "Inside Thread #{i + 1}: #{thread_variable}"
    puts "Inside Thread #{i + 1} accessing main thread variable: #{main_thread_variable}"
  end
end

fiber.resume

threads.each(&:join)

puts "In Main Thread: #{main_thread_variable}"