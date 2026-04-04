#I needed something like this instead of ifs. 
#Had a bug elsewhere and though it failed due to modulo error

#original with if condition, instead of mod
def repeat_char_jump2(input_string, step)
  # TODO: Use a loop to traverse the string with the given step, wrapping around when necessary.
  result = ''
  pointer = 0
  seen = []

  input_string.length.times do |i|
    return input_string if input_string.length <= 1
    seen << pointer 
  result << input_string[pointer]
  if (pointer + step) < input_string.length
    pointer += step
  else 
    pointer = (pointer + step) - input_string.length 
  end
  if seen.include?(pointer)
    pointer += 1
  end
end
  result
end
# If length is 7 and pointer is 5, jumping by 3:

#pointer = (5 + 3) % 7 # result is 1


def repeat_char_jump(input_string, step)
  return input_string if input_string.length <= 1
  
  result = ''
  pointer = 0
  seen = []

  input_string.length.times do
    result << input_string[pointer]
    seen << pointer 

    # Calculate next jump using modulo for cleaner "wrapping"
    pointer = (pointer + step) % input_string.length
    
    # If we hit a character we already used, move to the next available one
    while seen.include?(pointer) && seen.length < input_string.length
      pointer = (pointer + 1) % input_string.length
    end
  end
  
  result
end

#Gemini how to run tests

def assert_equal(expected, actual)
  if expected == actual
    puts "PASS: Got '#{actual}'"
  else
    puts "FAIL: Expected '#{expected}', but got '#{actual}'"
  end
end


def test_4
  assert_equal "cxgdlvd", repeat_char_jump("cgldxdv", 4)
end


def test_5
  assert_equal "cxgdlvd", repeat_char_jump2("cgldxdv", 4)
end

puts "--- Running Manual Checks ---"
puts repeat_char_jump('abcdefg', 3) # "adgcfbe"
puts repeat_char_jump('abcd', 2)    # "acbd"
puts repeat_char_jump('z', 1)  # "z"

puts "\n--- Running Test Suite ---"
test_4
test_5
