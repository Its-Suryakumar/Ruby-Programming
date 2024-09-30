def reverse_string(str)
    reversed_str = ""
    index = str.length - 1
    
    while index >= 0
      reversed_str += str[index]
      index -= 1
    end
    
    reversed_str
  end

  original_string = "Suryakumar"
  reversed_string = reverse_string(original_string)
  puts "Original string: #{original_string}"
  puts "Reversed string: #{reversed_string}"
  