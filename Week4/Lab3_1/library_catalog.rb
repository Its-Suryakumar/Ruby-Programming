library_catalog = {}

def add_book_to_catalog(catalog)
  puts "Enter the book's title:"
  title = gets.chomp

  puts "Enter the author's name:"
  author = gets.chomp

  puts "Enter the genre:"
  genre = gets.chomp

  puts "Enter the publication year:"
  year = gets.chomp.to_i

  id = catalog.size + 1

  catalog[id] = { title: title, author: author, genre: genre, year: year }
end

def books_published_after(catalog, year)
  catalog.select { |id, book| book[:year] > year }
end

loop do
  add_book_to_catalog(library_catalog)
  
  puts "Do you want to add another book? (yes/no)"
  answer = gets.chomp.downcase
  break if answer != 'yes'
end

puts "Enter the year to search for books published after:"
search_year = gets.chomp.to_i

searched_books = books_published_after(library_catalog, search_year)

puts "Books published after #{search_year}:"
searched_books.each do |id, book|
  puts "Title: #{book[:title]}, Author: #{book[:author]}, Genre: #{book[:genre]}, Year: #{book[:year]}"
end
