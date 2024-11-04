thread = Thread.new do
    puts "Thread is going to sleep..."
    sleep 
    puts "Thread has been woken up!"
  end
  
  sleep(2)
  puts "Main thread is waking up the sleeping thread..."
  
  thread.wakeup
  
  thread.join