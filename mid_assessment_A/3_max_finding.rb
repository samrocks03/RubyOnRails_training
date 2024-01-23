# def find_largest_element(*arr)
#   largest_element = arr.max
# end

# # Example: Find the largest element in an array
# # numbers = [5, 8, 2, 11, 6]



# # can also do as : .map{|n| n.to_i}
# ip = gets.chomp.split.map(&:to_i)
# res = find_largest_element(*ip)

# puts "The largest element in the array is: #{res}"



def get_max(arr)
  max = -Float::INFINITY

  for i in 0...arr.length
    recent_element = arr[i].to_i

    if recent_element > max
      max = recent_element
    end
  end

  puts "Largest element is : #{max}"
end


arr = []

print "enter size: "
size = gets.to_i
print "\n Now enter #{size} elements on new line : \n"

i = 0
while i<size do
  inp = gets.chomp.to_i
  arr.push(inp)
  i += 1
end

get_max(arr)
