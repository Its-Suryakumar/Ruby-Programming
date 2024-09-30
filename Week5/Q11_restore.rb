require 'fileutils'

def restore(backup_source, restore_destination)
    if File.exist?(backup_source) || Dir.exist?(backup_source)
      FileUtils.cp_r(backup_source, restore_destination)  
      puts "Restored from '#{backup_source}' to '#{restore_destination}'."
    else
      puts "Backup source '#{backup_source}' does not exist."
    end
  end
  
  restore("backup_folder/important_file_backup", "restored_important_file.txt")
  restore("backup_folder/important_directory_backup", "restored_directory")