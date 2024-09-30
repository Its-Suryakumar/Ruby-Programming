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