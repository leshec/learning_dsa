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

