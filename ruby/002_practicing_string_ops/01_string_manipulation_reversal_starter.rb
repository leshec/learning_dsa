def reverse_chars_and_sentence1(s)
  answer = ''
  words = s.split(' ')
  words.each do |word|
    answer << word.reverse + ' '
  end
  answer.strip
end

def reverse_chars_and_sentence2(s)
  s = (s.split.map { |item| item.reverse}).join(' ')
  s
end

def reverse_chars_and_sentence3(s)
  s.split.map(&:reverse).join(' ')
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
  assert_equal "olleH taen 321_stsiybur", reverse_chars_and_sentence1("Hello neat rubyists_123")
end

def test_2
  assert_equal "olleH taen 321_stsiybur", reverse_chars_and_sentence2("Hello neat rubyists_123")
end

def test_3
  assert_equal "olleH taen 321_stsiybur", reverse_chars_and_sentence3("Hello neat rubyists_123")
end

puts "---Running manual---"
puts reverse_chars_and_sentence1("Hello neat rubyists_123")
puts reverse_chars_and_sentence2("Hello neat rubyists_123")
puts reverse_chars_and_sentence3("Hello neat rubyists_123")

puts "---Running tests---"
test_1
test_2
test_3
