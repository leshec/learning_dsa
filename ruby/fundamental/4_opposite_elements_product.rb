def opposite_elements_product(numbers)
  # TODO: Calculate the product of opposite elements, including unpaired middle elements if present.
  #Conditional set the array, dependence on eveness
  mid = numbers.length / 2
  new_array = if numbers.length.odd? 
                [numbers[mid]]
              else
                []
              end
  #Create the two pointers
  left = mid - 1
  right = mid
  if numbers.length.odd?
    right += 1
  end

  #loop to build new array out from the centre
  while left >= 0 && right < numbers.length
  new_array << (numbers[left] * numbers[right])
  left -= 1
  right +=1
  end
  new_array
end


def assert_equal(expected, actual)
  if expected == actual
    puts "PASS: got #{actual}"
  else
    puts "FAIL: got #{actual}, but expected #{expected}"
  end
end

def test_case1
    assert_equal [3, 8, 5], opposite_elements_product([1, 2, 3, 4, 5])
  end

  def test_case2
    assert_equal [-1, -1, -1], opposite_elements_product([1, -1, 1, -1, 1, -1])
  end

  def test_case3
    assert_equal [10000] * 100, opposite_elements_product([-100] * 200)
  end

  def test_case4
    assert_equal [-9, 2, 21, 40], opposite_elements_product([5, -7, 2, -9, 1, -3, 8])
  end

  def test_case5
    assert_equal [-4, -9, 0, 30, 21], opposite_elements_product([3, 6, 2, 9, -4, -1, 0, 5, 7])
  end

  def test_case6
    assert_equal [81] * 100, opposite_elements_product([9] * 200)
  end

  def test_case7
    assert_equal [5], opposite_elements_product([5])
  end

  def test_case8
    assert_equal [0], opposite_elements_product([0, 0])
  end

# Input: `[1, 2, 3, 4, 5]`
# Output: `[3, 8, 5]`

 puts "--- Running Manual Checks ---"
opposite_elements_product([1, 2, 3, 4, 5])
opposite_elements_product([1, -1, 1, -1, 1, -1])
opposite_elements_product([-100] * 200)
opposite_elements_product([5, -7, 2, -9, 1, -3, 8])
opposite_elements_product([3, 6, 2, 9, -4, -1, 0, 5, 7])
opposite_elements_product([9] * 200)
opposite_elements_product([5])
opposite_elements_product([0, 0])

 puts "\n--- Running Test Suite ---"
 test_case1
 test_case2
 test_case3
 test_case4
 test_case5
 test_case6
 test_case7
 test_case8
