def join_files(output_file, part_file_pattern)
    output = File.open(output_file, "wb")
    
    part_number = 1
    loop do
      part_file_name = part_file_pattern % part_number
      break unless File.exist?(part_file_name)
      
      File.open(part_file_name, "rb") do |part_file|
        output.write(part_file.read)
      end
      
      puts "Joined: #{part_file_name}"
      part_number += 1
    end
    
    output.close
  end
  
  join_files("restored_large_file.dat", "large_file.dat.part%d")
  