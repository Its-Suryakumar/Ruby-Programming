marketplace = {}

def add_product_to_marketplace(marketplace)
  puts "Enter the product name:"
  name = gets.chomp

  puts "Enter the product price:"
  price = gets.chomp.to_f

  puts "Enter the product quantity:"
  quantity = gets.chomp.to_i


  id = marketplace.size + 1


  marketplace[id] = { name: name, price: price, quantity: quantity }
end

def total_value_of_products(marketplace)
  marketplace.sum { |id, product| product[:price] * product[:quantity] }
end

loop do
  add_product_to_marketplace(marketplace)

  puts "Do you want to add another product? (yes/no)"
  answer = gets.chomp.downcase
  break if answer != 'yes'
end

total_value = total_value_of_products(marketplace)
puts "The total value of all products in the marketplace is: Rs. #{total_value}"