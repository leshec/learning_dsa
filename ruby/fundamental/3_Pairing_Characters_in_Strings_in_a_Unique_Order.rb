def special_order(input_string)
  result = ''
  length = input_string.length

  ((length + 1) / 2).ceil.times do |i|
    result += input_string[length - 1 - i]
  end
  (length/2).ceil.times do |i|
      result += input_string[i]
  end
  result
end

puts special_order("abcde")

puts special_order("abcdef")


#     If input_string is "abcde", the method should return "edcab".
#     If input_string is "abcdef", the method should return "fedabc".

