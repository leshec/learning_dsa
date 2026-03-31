def duplicate_digits(n)
  # TODO: Process each digit in the input integer and duplicate it in the result while maintaining order.
  digit_sum = 0
  mult = 1
  while n > 0
    digit_sum += (n % 10) * mult
    digit_sum += (n % 10) * mult * 10
    mult *= 100
    n = n / 10
  end
  digit_sum
end

#Run the code
puts duplicate_digits(1234)

# Earlier version: 

# def duplicate_digits(n)
#   # TODO: Process each digit in the input integer and duplicate it in the result while maintaining order.
#   puts n
#   digit_stream = []
#   digit_sum = 0
#   while n > 0
#     digit_stream.push(n % 10)
#     n = n / 10
#   end
#   while digit_stream.size > 0
#     digit_sum *= 100
#     digit_sum += digit_stream[-1] * 10 + digit_stream[-1] 
#     digit_stream.pop
#   end
#   digit_sum
# end
#
# puts duplicate_digits(1234)
#kkkkk
