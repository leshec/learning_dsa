def unusual_traversal(array)
  answer  = []
  puts "todo"
  answer
end

# - Begin with the **middle element** of the array.
# - For each subsequent pair of elements, alternate between taking two elements from the left and two elements from the right, relative to the middle.
# - If fewer than two elements remain on either side, include all the remaining elements from that side.
# - Continue this process until all elements of the array have been traversed.

# **For example**, 
# for `array = [1, 2, 3, 4, 5, 6, 7]`, 
# your function should return `[4, 2, 3, 5, 6, 1, 7]`. 
#
# And for `array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]`, 
# your function should return `[6, 4, 5, 7, 8, 2, 3, 9, 10, 1, 11]`.

def assert_equal(expected, actual)
  if expected == actual
    puts "Pass: #{actual}"
  else
    puts "Fail: actual: #{actual}  expected: #{expected}"
  end
end

def test1
  assert_equal [4, 2, 3, 5, 6, 1, 7], unusual_traversal([1,2,3,4,5,6,7])
end

def test2
  assert_equal [6,4,5,7,8,2,3,9,10,1,11], unusual_traversal([1,2,3,4,5,6,7,8,9,10])
end


puts "---Run tests----"
test1
test2
