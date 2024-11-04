# Create a thread
thread = Thread.new do
    thread_variable = "Thread Variable"
    puts "Inside Thread: #{thread_variable}"
  
    # Create a fiber within the thread
    fiber = Fiber.new do
      fiber_variable = "Fiber Variable"
      puts "Inside Fiber within Thread: #{fiber_variable}"
      puts "Inside Fiber within Thread accessing thread variable: #{thread_variable}"
    end
  
    # Resume the fiber
    fiber.resume
  end
  
  # Wait for the thread to complete
  thread.join