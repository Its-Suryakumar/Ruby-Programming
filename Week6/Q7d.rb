t1 = Thread.new do
    5.times do |i|
      puts "Thread 1 - Count: #{i}"
      Thread.pass  
    end
  end
  
  t2 = Thread.new do
    5.times do |i|
      puts "Thread 2 - Count: #{i}"
      Thread.pass  
    end
  end
  
  [t1, t2].each(&:join)
  