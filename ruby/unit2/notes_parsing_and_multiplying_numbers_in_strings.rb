#Extract numbers and find their product
def parse_and_multiply(s)
  num = ''
  numbers = []

  s.each_char do |char|
    if char =~ /\d/
      num += char
    elsif !num.empty?
      numbers << num.to_i
      num =''
    end
  end
    numbers << num.to_i unless num.empty?

    result = 1
  numbers.each do |number|
    result *= number
    end
result
end

puts parse_and_multiply("hello2 worl5d")

def assert_equal(expected, actual)
  if expected == actual
    puts "Pass: got '#{actual}'"
  else
    puts "Fail: got '#{actual}', expected '#{expected}'"
  end
end

def test_1 
  assert_equal 10, parse_and_multiply("hell2o worl5d")
end

def test_2
  assert_equal 60, parse_and_multiply("I am3 _2 IH5 2")
end

puts "---Running checks---"
puts parse_and_multiply("hell2o worl5d")
puts parse_and_multiply("I am3 _2 IH5 2")

puts "---Running tests---"
test_1
test_2

