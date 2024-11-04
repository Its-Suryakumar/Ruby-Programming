# Create a high-priority thread
high_priority_thread = Thread.new do
    5.times do
      puts "High priority thread is running"
      sleep(0.1)
    end
  end
  
  # Create a low-priority thread
  low_priority_thread = Thread.new do
    5.times do
      puts "Low priority thread is running"
      sleep(0.1)
    end
  end
  
  # Set thread priorities
  high_priority_thread.priority = 5
  low_priority_thread.priority = 1
  
  # Wait for both threads to complete
  high_priority_thread.join
  low_priority_thread.join