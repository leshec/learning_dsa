def reverse_chars_and_sentence(s)
  answer = ''
  words = s.split(' ')
  words.each do |word|
    answer << word.reverse + ' '
  end
  answer.strip
end


def assert_equal(expected, actual)
  if expected == actual
    puts "Pass: got '#{actual}'"
  else
    puts "Fail: got '#{actual}', expected '#{expected}'"
  end
end

#There was a bug in their description Error:"..321_stisybur..". Fixed below. 
def test_1
  assert_equal "olleH taen 321_stsiybur", reverse_chars_and_sentence("Hello neat rubyists_123")
end

puts "---Running manual---"
reverse_chars_and_sentence("Hello neat rubyists_123")

puts "---Running tests---"
test_1
