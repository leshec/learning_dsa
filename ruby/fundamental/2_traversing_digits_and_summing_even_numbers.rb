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



