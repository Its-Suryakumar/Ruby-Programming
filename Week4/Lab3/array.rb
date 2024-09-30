# Create an array
a = [1, 2, 3, 4, 5, 6]

# a. Different ways to access the array elements
puts "Accessing elements:"
puts "First element: #{a[0]}"
puts "Third element: #{a[2]}"
puts "Last element: #{a[-1]}"
puts "Range of elements (index 1 to 3): #{a[1..3]}"
puts "Using fetch method: #{a.fetch(2)}"

# b. Five different methods associated with array
puts "\nArray methods:"
puts "Length of array: #{a.length}"
puts "Reversed array: #{a.reverse}"
puts "Array includes 3? #{a.include?(3)}"
puts "Joined array into string: #{a.join('-')}"
puts "Sum of all elements: #{a.sum}"

# c. Different ways to add and delete an element of an array
puts "\nAdding and deleting elements:"
a.push(7)          # Adding an element to the end
puts "Array after push(7): #{a}"

a << 8             # Another way to add an element to the end
puts "Array after << 8: #{a}"

a.unshift(0)       # Adding an element to the beginning
puts "Array after unshift(0): #{a}"

a.insert(3, 10)    # Adding an element at index 3
puts "Array after insert(3, 10): #{a}"

a.pop              # Removing the last element
puts "Array after pop: #{a}"

a.shift            # Removing the first element
puts "Array after shift: #{a}"

a.delete_at(2)     # Removing an element at index 2
puts "Array after delete_at(2): #{a}"

a.delete(10)       # Removing a specific element by value
puts "Array after delete(10): #{a}"

# d. Introduce two new arrays and perform intersection, concatenation, difference
b = [4, 5, 6, 7, 8]
c = [1, 2, 9, 10]

puts "\nArray b: #{b}"
puts "Array c: #{c}"

intersection = a & b
puts "Intersection of a and b: #{intersection}"

concatenation = a + c
puts "Concatenation of a and c: #{concatenation}"

difference = a - b
puts "Difference between a and b: #{difference}"

# e. Perform a binary search using array a
# Ensure the array is sorted
a.sort!
puts "\nSorted array a: #{a}"

# Binary search for the element '4'
def binary_search(arr, target)
  low = 0
  high = arr.length - 1

  while low <= high
    mid = (low + high) / 2
    if arr[mid] == target
      return "Element #{target} found at index #{mid}"
    elsif arr[mid] < target
      low = mid + 1
    else
      high = mid - 1
    end
  end

  return "Element #{target} not found in array"
end

puts binary_search(a, 4)
puts binary_search(a, 10)
