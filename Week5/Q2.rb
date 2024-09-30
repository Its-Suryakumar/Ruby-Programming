<<<<<<< HEAD
if Dir.exist?("Sample-Dir")
    puts "Directory exists."
  else
    puts "Directory does not exist."
  end
  
=======
def find_head_number(array)
  return nil if array.length < 3

  (1...array.length - 1).each do |i|
    if array[i] > array[i - 1] && array[i] > array[i + 1]
      return array[i]
    end
  end
  nil
end

def find_master_pair(array)
  return nil if array.length < 2

  max_sum = 0
  best_pair = nil

  (0...(array.length - 1)).each do |i|
    ((i + 1)...array.length).each do |j|
      sum = array[i] + array[j]
      if sum > max_sum
        max_sum = sum
        best_pair = [array[i], array[j]]
      end
    end
  end

  best_pair
end

array = [1, 3, 2, 8, 5, 4, 10, 12, 53, 23, 25]

head_number = find_head_number(array)
master_pair = find_master_pair(array)

puts "Head Number: #{head_number.inspect}"  
puts "Master Pair: #{master_pair.inspect}"  
>>>>>>> 5fd0631123001f363869f96bfb50eedbddbffc28
