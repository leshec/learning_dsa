def binary_search(list, target)
  r = list.length - 1
  l = 0

  while l <= r
    m = l + (r - l) / 2  
    if list[m] == target
      return m
    elsif list[m] < target
      l = m + 1 
    else
      r = m - 1
    end
  end
  nil
end

answer = binary_search([0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15], 19)

if answer != nil
  puts "answer #{answer}"
else
  puts "target not in the list"
end

def assert_equal(expected, actual)
  if expected == actual
    puts "PASS: got #{actual}"
  else
    puts "FAIL: expected #{expected.inspect}, but got #{actual.inspect}"
  end
end

def binary_search(list, target)
  r = list.length - 1
  l = 0
  while l <= r
    m = l + (r - l) / 2  
    if list[m] == target
      return m
    elsif list[m] < target
      l = m + 1 
    else
      r = m - 1
    end
  end
  nil
end

def assert_equal(description, expected, actual)
  if expected == actual
    puts "PASS: [#{description}] Got: #{actual.inspect}"
  else
    puts "FAIL: [#{description}] Expected #{expected.inspect}, but got #{actual.inspect}"
  end
end

# Test Data
standard_list = [10, 20, 30, 40, 50, 60, 70, 80]
single_element = [99]
empty_list = []

puts "--- Running Binary Search Test Suite ---"

# 1. Exact Middle
assert_equal("Find target in the exact middle of an even-length list", 3, binary_search(standard_list, 40))

# 2. Lower Boundary
assert_equal("Find target at the first index", 0, binary_search(standard_list, 10))

# 3. Upper Boundary
assert_equal("Find target at the last index", 7, binary_search(standard_list, 80))

# 4. Out of Bounds (Low)
assert_equal("Return nil when target is smaller than the smallest element", nil, binary_search(standard_list, 5))

# 5. Out of Bounds (High)
assert_equal("Return nil when target is larger than the largest element", nil, binary_search(standard_list, 100))

# 6. Gap in Values
assert_equal("Return nil when target is missing but within the range of the list", nil, binary_search(standard_list, 35))

# 7. Single Element Success
assert_equal("Find target in a list with only one element", 0, binary_search(single_element, 99))

# 8. Single Element Failure
assert_equal("Return nil when target is not in a single-element list", nil, binary_search(single_element, 100))

# 9. Empty List
assert_equal("Return nil when searching an empty list", nil, binary_search(empty_list, 50))

# 10. Large List Middle-Left
# Testing if the rounding logic m = l + (r-l) / 2 works for indices that round down
assert_equal("Find target in the lower half of a large range", 2, binary_search(standard_list, 30))
