# TODO: Split the string into words and rotate each word's characters once to the right.

def rotate_words(s)
  word = s.split.map{ |word| word[-1] + word[0..-2] unless word.empty?}.compact.join(' ')
end

# def rotate_words(s)
#   s.split.map do |word|
#     word.chars.rotate(-1).join 
#   end.join(' ')
# end

def assert_equal(expected, actual)
  if expected == actual
    puts "Pass: got '#{actual}'"
  else
    puts "Fail: got '#{actual}', expected '#{expected}'"
  end
end


 def test_input_1
    assert_equal "cab 312 fde igh", rotate_words("abc 123 def ghi")
  end

  def test_input_2
    assert_equal "tba", rotate_words("bat")
  end

  def test_input_3
    assert_equal "rraceCa", rotate_words("raceCar")
  end

  def test_input_4
    assert_equal "6mAnGo66 iTaCo123", rotate_words("mAnGo666 TaCo123i")
  end

  def test_input_5
    assert_equal "b_a Y77 8UwF8", rotate_words("_ab 77Y UwF88")
  end

  def test_input_6
    assert_equal "dSingleWor", rotate_words("SingleWord")
  end

  def test_input_7
    assert_equal "jabcdefghi", rotate_words("abcdefghij")
  end

  def test_input_8
    assert_equal "ZZzZzZz 0123456789 SzYxWvUt", rotate_words("ZzZzZzZ 1234567890 zYxWvUtS")
  end

  def test_input_9
    assert_equal "a", rotate_words("a")
  end

# puts "---Running manual checks---"
# puts rotate_words("abc 123 def ghi")
# puts rotate_words("bat")
# puts rotate_words("raceCar")
# puts rotate_words("mAnGo666 TaCo123i")
# puts rotate_words("_ab 77Y UwF88")
# puts rotate_words("SingleWord")
# puts rotate_words("abcdefghij")
# puts rotate_words("ZzZzZzZ 1234567890 zYxWvUtS")
#

puts "---Running manual checks---"
test_input_1
test_input_2
test_input_3
test_input_4
test_input_5
test_input_6
test_input_7
test_input_8
test_input_9
