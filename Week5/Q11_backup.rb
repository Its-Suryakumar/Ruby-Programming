require 'fileutils'

def backup(source, destination)
  if File.exist?(source) || Dir.exist?(source)
    FileUtils.mkdir_p(destination)  
    FileUtils.cp_r(source, destination)  
    puts "Backup of '#{source}' created at '#{destination}'."
  else
    puts "Source '#{source}' does not exist."
  end
end

# Usage
backup("important_file.txt", "backup_folder/important_file_backup")
backup("important_directory", "backup_folder/important_directory_backup")