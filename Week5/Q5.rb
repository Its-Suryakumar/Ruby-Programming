<<<<<<< HEAD
File.open("example.txt", "w") do |file|
    file.puts "Line 1: Ruby is fun!"
    file.puts "Line 2: File handling is easy."
    file.puts "Line 3: Let's explore more features."
  end
  
  File.open("example.txt", "r") do |file|
    
    file.each_line do |line|
      puts "#{file.lineno}: #{line}"
    end
  
    if file.eof?
      puts "Reached the end of the file."
    else
      puts "Still reading the file."
    end
  
    file.seek(0, IO::SEEK_SET)
    puts "Moved back to the beginning of the file."
  
    puts "Line number after seek: #{file.lineno}"
  
    file_size = File.size("example.txt")
    puts "File size: #{file_size} bytes"
  end
=======
def word_frequency(file_path)
  word_count = Hash.new(0)   
  text = File.read(file_path)
  words = text.downcase.scan(/\b[\w']+\b/)
  words.each { |word| word_count[word] += 1 }
  word_count.each { |word, count| puts "#{word}: #{count}" }
  most_frequent_word = word_count.max_by { |_, count| count }
  puts "\nMost frequently used word: '#{most_frequent_word[0]}' appears #{most_frequent_word[1]} times"
end
   
word_frequency('sample.txt')
>>>>>>> 5fd0631123001f363869f96bfb50eedbddbffc28
