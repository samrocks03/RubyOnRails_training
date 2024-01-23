#Program to sort an array using the bubble sort algorithm.
def bubble_sort(arr)
  len = arr.length
  for i in 0..len - 2
    to_swap = false #setting the flag
    for j in 0..len - i - 2
      if arr[j] > arr[j+1]
        arr[j], arr[j+1] = arr[j+1], arr[j]
        to_swap = true
      end
    end
    break unless to_swap
  end
end


puts "Enter the elements of the array, with space in between: "
get_arr = gets.chomp
arr = get_arr.split.map(&:to_i)
bubble_sort(arr)
print "\nThe sorted array is : #{arr}\n"
