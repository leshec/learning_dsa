def pair_elements(numbers)
  # TODO: Create pairs starting from the middle and alternating towards both ends
  mid = numbers.length / 2
  answer_array = if numbers.length.odd?
                    [[numbers[mid], 0]]
                  else
                  [ ]
                  end
  left = mid - 1
  right = mid
  if numbers.length.odd?
    right +=1
  end
  
  while left >= 0 && right < numbers.length
  answer_array << [numbers[left], numbers[right]]
  left -=1
  right +=1
  end
  answer_array
end


# This is not exhaustive.
# Only one element etc
# Pointers here go out from middle, my brain still goes out to in. Watch that. 
def assert_equal(expected, actual)
  if expected == actual
    puts "PASS: got #{actual}"
  else
    puts "FAIL: got #{actual}, expected #{expected}"
  end
end

def test_1 
  assert_equal [[1,2],[1,2]], pair_elements([1,1,2,2])
end

def test_2
  assert_equal [[1,2],[1,2],[1,2,]], pair_elements([1,1,1,2,2,2])
end

def test_3
  assert_equal [[3,4],[2,5],[1,6]], pair_elements([1,2,3,4,5,6])
end

def test_4
  assert_equal [[7,0], [6,8], [5,9]],     pair_elements([5,6,7,8,9])
end

puts "---Running Manual tests----"
puts pair_elements([1,1,2,2]).inspect
puts pair_elements([1,1,1,2,2,2]).inspect
puts pair_elements([1,2,3,4,5,6]).inspect
puts pair_elements([1,2,3]).inspect

puts "---Running Defined Tests---"
test_1
test_2
test_3
