threads = []

10.times do |i|
  threads << Thread.new do
    sleep_duration = rand(1..5) 
    sleep(sleep_duration)
    puts "Thread #{i + 1} slept for #{sleep_duration} seconds."
  end
end

threads.each(&:join) 