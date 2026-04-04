# TODO: Replace each character in the words with its opposite letter in the alphabet and reorder the words as specified.

#more efficient, from the clankers via in place transformation first
def transform_string(input_str)
  abc = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
  zyx = 'zyxwvutsrqponmlkjihgfedcbaZYXWVUTSRQPONMLKJIHGFEDCBA'
  input_str.tr(abc, zyx).split.rotate(-1).join(' ')
end

#better use of map
def transform_string(input_str)
  abc = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
  zyx = 'zyxwvutsrqponmlkjihgfedcbaZYXWVUTSRQPONMLKJIHGFEDCBA'

  words = input_str.split.map do |word|
    word.chars.map { |char| zyx[abc.index(char)] }.join
  end

  words.rotate(-1).join(' ')
end

#Was mixing procedural and functional, mess...slightly less shit
def transform_string(input_str)
 abc = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
  xyz = 'zyxwvutsrqponmlkjihgfedcbaZYXWVUTSRQPONMLKJIHGFEDCBA'  
  s = input_str.split.map{ |word|
    word.chars.map {|char|
      xyz[abc.index(char)]
    }.join
  }.join(' ')

  answer = s.split.rotate(-1).join(' ')
  answer
end

#On the same theme, handling upper and lower case with ternary op
def transform_string(input_str)
  abc = 'abcdefghijklmnopqrstuvwxyz'
  xyz = 'zyxwvutsrqponmlkjihgfedcba'

  words = input_str.split.map do |word|
    word.chars.map do |char|
      idx = abc.index(char.downcase)
      char == char.upcase ? xyz[idx].upcase : xyz[idx]
    end.join 
  end

  words.rotate(-1).join(' ')
end


def assert_equal(expected, actual)
  if expected == actual
    puts "Pass: got '#{actual}'"
  else
    puts "Fail: got '#{actual}', expected '#{expected}'"
  end
end

def test_1
    assert_equal "Svool", transform_string("Hello")
  end

  def test_2
    assert_equal "ZYX", transform_string("ABC")
  end

  def test_3
    assert_equal "zyx", transform_string("abc")
  end

  def test_4
    assert_equal "WLT Z jfrxp yildm ULC qfnkh levi gsv ozab", 
      transform_string("A quick brown FOX jumps over the lazy DOG")
  end

  def test_5
    assert_equal "Avyiz", transform_string("Zebra")
  end

  def test_6
    assert_equal "ovggvih XzkrgzO", transform_string("CapitaL letters")
  end

  def test_7
    assert_equal "ovggvih olDvi", transform_string("loWer letters")
  end

  def test_8
    assert_equal "ovggvih LKKLHRGV", transform_string("OPPOSITE letters")
  end

  def test_9
    assert_equal "zdzb Zm zkkov z wzb pvvkh gsv wlxgli", transform_string("An apple a day keeps the doctor away")
  end

puts "---Running manual checks---"
puts transform_string("Hello")
puts transform_string("ABC")
puts transform_string("abc")
puts transform_string("A quick brown FOX jumps over the lazy DOG")
puts transform_string("Zebra")
puts transform_string("CapitaL letters")
puts transform_string("loWer letters")
puts transform_string("OPPOSITE letters")
puts transform_string("An apple a day keeps the doctor away")

puts "---Running tests---"
test_1
test_2
test_3
test_4
test_5
test_6
test_7
test_8
test_9
