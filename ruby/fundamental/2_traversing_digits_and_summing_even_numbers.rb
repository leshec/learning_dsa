def count_consecutive_equal_digits(n)
  count = 0
  last_seen = 10
  while n > 0
    digit_last = (n % 10)
    n /= 10 
    if digit_last == last_seen
      count += 1 
    end
    last_seen = digit_last
  end
  count
end

# alternative version

def count_consecutive_equal_digits2(n)
  # TODO: Count pairs of consecutive equal digits in the given integer without converting it to a string.
  count = 0

  while n > 0
    digit_last = (n % 10)
    n = n / 10 
    digit_penultimate = (n % 10)
    if digit_last == digit_penultimate
      count += 1 
    end
  end
  count
end

puts count_consecutive_equal_digits(13579)
puts count_consecutive_equal_digits2(13579)



# Your task is to write a function that takes a positive integer n and returns the number of pairs of consecutive equal digits in the number. Consecutive equal digits are adjacent digits in n that are the same.
#
# For example:
#
#     If n = 113224, the consecutive equal digits are 11 and 22, so the output should be 2.
#     If n = 444, the consecutive equal digits are 44 and 44 (the first and second, and the second and third), so the output should be 2.
#     If n = 13579, there are no consecutive equal digits, so the output should be 0.
#
# Constraints:
#
#     The input n will always be a positive integer ranging from 11 to 108108, inclusive.
#     You are not allowed to convert the number into a string or use other iterable structures to solve this task. The solution should be implemented using integer operations only.
#
