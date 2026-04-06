# TODO: Split the input string by hyphens, convert each word between numbers and letters as specified,
# and rejoin the results with hyphens.

numbers = (1..26).map(&:to_s)
letters = ('a'..'z').to_a
DICT = letters.zip(numbers).to_h
        .merge(numbers.zip(letters).to_h)

def swap_words(s)
  s.split('-').map{|el| DICT[el]}.join('-') 
end


def swap_words(s)
  result = ''
  s.split('-').map do |element|
    if element.match?(/[a-z]/)
      (element.ord - 96).to_s
    else
      (element.to_i + 96).chr
    end
  end.join('-')
end

def swap_words(s)
  alpha = "a b c d e f g h i j k l m n o p q r s t u v w x y z 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26".split
  nums = "1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 a b c d e f g h i j k l m n o p q r s t u v w x y z".split

  s.split('-').map{|element| alpha[nums.index(element)]}.join('-') 
end


def assert_equal(expected, actual)
  if expected == actual
    puts "Pass: got '#{actual}'"
  else
    puts "Fail: got '#{actual}', expected '#{expected}'"
  end
end

def test_1
    assert_equal "a-b-c-d-e", swap_words("1-2-3-4-5")
  end

  def test_2
    assert_equal "1-2-3", swap_words("a-b-c")
  end

  def test_3
    assert_equal "a-1-c-3-e", swap_words("1-a-3-c-5")
  end

  def test_4
    assert_equal "26-25-24-23-22", swap_words("z-y-x-w-v")
  end

  def test_5
    assert_equal "1-z-2-y-3-x", swap_words("a-26-b-25-c-24")
  end

  def test_6
    assert_equal "m-i-n-o", swap_words("13-9-14-15")
  end

  def test_7
    assert_equal "l-a-r-i-a", swap_words("12-1-18-9-1")
  end

  def test_8
    assert_equal "s-o-l-u-t-i-o-n", swap_words("19-15-12-21-20-9-15-14")
  end

  def test_9
    assert_equal "1-2-3-a-b-c-24-25-26-x-y-z", swap_words("a-b-c-1-2-3-x-y-z-24-25-26")
  end

  def test_10
    assert_equal "r-u-b-y-i-s-f-u-n", swap_words("18-21-2-25-9-19-6-21-14")
  end

puts "---Run manual checks---"

puts swap_words("1-2-3-4-5")

puts swap_words("a-b-c")

puts swap_words("1-a-3-c-5")

puts swap_words("z-y-x-w-v")

puts swap_words("a-26-b-25-c-24")

puts swap_words("13-9-14-15")

puts swap_words("12-1-18-9-1")

puts swap_words("19-15-12-21-20-9-15-14")

puts swap_words("a-b-c-1-2-3-x-y-z-24-25-26")

puts swap_words("18-21-2-25-9-19-6-21-14")

puts "---Run tests---"
test_1
test_2
test_3
test_4
test_5
test_6
test_7
test_8
test_9
test_10
