shared_counter = 0

mutex = Mutex.new

threads = 10.times.map do |i|
  Thread.new do
    10.times do
      mutex.synchronize do
        shared_counter += 1
      end
    end
  end
end

threads.each(&:join)

puts "Final value of shared_counter: #{shared_counter}"
