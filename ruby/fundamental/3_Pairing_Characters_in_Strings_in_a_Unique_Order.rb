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


# You are tasked with writing a Ruby method called special_order(input_string) that takes a string composed of lowercase English letters ('a' to 'z') as input. 
# The length of the string will range from 1 to 100 characters.
#
# The goal is to create a new string by following this specific pattern:
#
#     Start by selecting characters from the last character of the input string and move toward the middle, in reverse order.
#     Once you reach the middle character, switch to selecting characters from the start of the string, moving toward the middle.
#
# If the input string has only one character, the resulting string is the same as the input.
#
# For example:
#
#     If input_string is "abcde", the method should return "edcab".
#     If input_string is "abcdef", the method should return "fedabc".
#
# Constraints:
#
#     The input string contains only lowercase English letters ('a' to 'z').
#     The length of the input string is between 1 and 100, inclusive.
#
# Try solving this task without relying on slice and reverse, using loops and manual string manipulation instead!
