pid = fork do
    5.times do |i|
      puts "Child process - Count: #{i}"
      sleep(0.5)
    end
  end
  
  if pid
    5.times do |i|
      puts "Parent process - Count: #{i}"
      sleep(0.5)
    end
    Process.wait(pid)
  end
  