require 'fileutils'
def rename_file(old_name, new_name)
  if File.exist?(old_name)
    File.rename(old_name, new_name)
    puts "File renamed from '#{old_name}' to '#{new_name}'."
  else
    puts "File '#{old_name}' does not exist."
  end
end

def copy_file(source, destination)
  if File.exist?(source)
    FileUtils.cp(source, destination)
    puts "File '#{source}' copied to '#{destination}'."
  else
    puts "Source file '#{source}' does not exist."
  end
end

rename_file("ruby-lab.txt", "new_renamed_file.txt") 
copy_file("new_renamed_file.txt", "backup_folder/copied_file.txt") 
