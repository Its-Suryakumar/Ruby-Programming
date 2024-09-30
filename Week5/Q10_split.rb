def split_file(file_path, part_size_in_mb)
    part_size = part_size_in_mb * 1024 * 1024
    file = File.open(file_path, "rb")
    file_size = File.size(file_path)
    part_number = 1
    while !file.eof?
      part_file_name = "#{file_path}.part#{part_number}"
      
      File.open(part_file_name, "wb") do |part_file|
        part_file.write(file.read(part_size))
      end
      puts "Created: #{part_file_name}"
      part_number += 1
    end
    file.close
  end
  split_file("large_file.dat", 10)
  