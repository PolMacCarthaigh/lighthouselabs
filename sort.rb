# Sort the array from lowest to highest
def sort(arr)
  return [] if arr.empty?
  loop do
    swapped = false
    arr.each_with_index do |num,i|
      if arr[i+1]
        if num > arr[i+1]
          arr[i], arr[i+1] = arr[i+1], arr[i]
          swapped = true
        end
      end
    end
    break if swapped == false
  end
  arr
end

# Find the maximum 
def maximum(arr)
  sort(arr).last
end

def minimum(arr)
  sort(arr).first
end
 
# expect it to return 42 below
result = maximum([2, 42, 22, 02])
puts "max of 2, 42, 22, 02 is: #{result}"

# expect it to return 2 below
result = minimum([2, 42, 22, 02])
puts "min of 2, 42, 22, 02 is: #{result}"

 
# expect it to return nil when empty array is passed in
result = maximum([])
puts "max on empty set is: #{result.inspect}"
result = minimum([])
puts "min on empty set is: #{result.inspect}"
 
result = maximum([-23, 0, -3])
puts "max of -23, 0, -3 is: #{result}"
 
result = maximum([6])
puts "max of just 6 is: #{result}"