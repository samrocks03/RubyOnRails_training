def find_largest_element(*arr)
  largest_element = arr.max
end

# Example: Find the largest element in an array
# numbers = [5, 8, 2, 11, 6]



# can also do as : .map{|n| n.to_i}
ip = gets.chomp.split.map(&:to_i)
res = find_largest_element(*ip)

puts "The largest element in the array is: #{res}"
