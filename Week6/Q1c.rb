fiber1 = Fiber.new do
    begin
      puts "Fiber 1: Starting"
      raise "An error occurred in Fiber 1"
    rescue => e
      puts "Fiber 1: Caught exception: #{e.message}"
    ensure
      puts "Fiber 1: Cleaning up"
    end
  end
  
  fiber2 = Fiber.new do
    begin
      puts "Fiber 2: Starting"
      fiber1.resume
      puts "Fiber 2: Resuming"
    rescue => e
      puts "Fiber 2: Caught exception: #{e.message}"
    ensure
      puts "Fiber 2: Cleaning up"
    end
  end
  
  fiber2.resume