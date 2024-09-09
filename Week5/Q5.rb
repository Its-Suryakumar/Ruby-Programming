def word_frequency(file_path)
  word_count = Hash.new(0)   
  text = File.read(file_path)
  words = text.downcase.scan(/\b[\w']+\b/)
  words.each { |word| word_count[word] += 1 }
  word_count.each { |word, count| puts "#{word}: #{count}" }
  most_frequent_word = word_count.max_by { |_, count| count }
  puts "\nMost frequently used word: '#{most_frequent_word[0]}' appears #{most_frequent_word[1]} times"
end
   
word_frequency('sample.txt')