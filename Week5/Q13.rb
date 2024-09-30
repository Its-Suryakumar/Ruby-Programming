require 'find'

def search_files(directory, name_pattern = nil, extension = nil, min_size = 0)
  matching_files = []

  Find.find(directory) do |path|
    if File.file?(path)
      if name_pattern.nil? || File.basename(path).include?(name_pattern)
        if extension.nil? || File.extname(path) == extension
          if File.size(path) >= min_size
            matching_files << path
          end
        end
      end
    end
  end
  
  matching_files
end

directory_path = "backup_folder" 

txt_files = search_files(directory_path, nil, '.txt')
puts "Found .txt files: #{txt_files}"

report_files = search_files(directory_path, 'report')
puts "Found files containing 'report': #{report_files}"

large_files = search_files(directory_path, nil, nil, 1024 * 1024)
puts "Found files larger than 1 MB: #{large_files}"
