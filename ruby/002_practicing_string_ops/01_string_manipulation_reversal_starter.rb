def reverse_chars_and_sentence(s)
puts "Yo"
end


def assert_equal(expected, actual)
  if expected == actual
    puts "Pass: got '#{actual}'"
  else
    puts "Fail: got '#{actual}', expected '#{expected}'"
  end
end

def test_1
  assert_equal "olleH taen 321_stisybur", reverse_chars_and_sentence("Hello neat rubyists_123")
end

puts "---Running manual---"
reverse_chars_and_sentence("Hello neat rubyists_123")

puts "---Running tests---"
test_1
