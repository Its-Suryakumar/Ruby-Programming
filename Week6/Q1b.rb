fiber1 = Fiber.new do
    puts "Fiber 1: Starting"
    Fiber.yield
    puts "Fiber 1: Resuming"
  end
  
  fiber2 = Fiber.new do
    puts "Fiber 2: Starting"
    fiber1.resume
    puts "Fiber 2: Resuming"
  end
  
  fiber2.resume