require 'fileutils'
def merge_files(file_paths, output_file, sort_by = nil)
  merged_content = []
  file_paths.each do |file_path|
    if File.exist?(file_path)
      File.foreach(file_path) do |line|
        merged_content << line.chomp
      end
    else
      puts "File '#{file_path}' does not exist."
    end
  end

  merged_content.sort! { |a, b| sort_by ? a.send(sort_by) <=> b.send(sort_by) : a <=> b }

  File.open(output_file, 'w') do |file|
    merged_content.each { |line| file.puts(line) }
  end

  puts "Merged content written to '#{output_file}'."
end
file_list = ["file1.txt", "file2.txt", "file3.txt"]  
output_file = "merged_output.txt"  
merge_files(file_list, output_file)
merge_files(file_list, "sorted_output.txt")
merge_files(file_list, "length_sorted_output.txt", :length)
