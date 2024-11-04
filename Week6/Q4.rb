# Create a fiber
fiber = Fiber.new do
    fiber_variable = "Fiber Variable"
    puts "Inside Fiber: #{fiber_variable}"
  
    # Create a thread within the fiber
    thread = Thread.new do
      thread_variable = "Thread Variable"
      puts "Inside Thread within Fiber: #{thread_variable}"
      puts "Inside Thread within Fiber accessing fiber variable: #{fiber_variable}"
    end
  
    # Wait for the thread to complete
    thread.join
  end
  
  # Resume the fiber
  fiber.resume