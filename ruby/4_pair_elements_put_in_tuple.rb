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
