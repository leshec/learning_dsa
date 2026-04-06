#Contrast: using regex to scan for digits
#Single pass pointer on regex engine
def sum_scores(s)
  s.scan(/\d+/).map(&:to_i).sum
end

#removing non-digits approach
#more brittle, allocates some mem
def sum_scores(s)
  abc = 'abcdefghijklmnopqrstuvwxyz;:,.' 
  space = ' '
  s.tr(abc,space).split.map(&:to_i).sum
end


def assert_equal(expected, actual)
  if expected == actual
    puts "Pass: got '#{actual}'"
  else 
    puts "Fail: got '#{actual}', expected '#{expected}'"
  end
end

def test_1
    assert_equal 18, sum_scores("joe scored 5 points, while adam scored 10 points and bob scored 2, with an extra 1 point scored by joe")
  end

  def test_2
    assert_equal 100, sum_scores("michael scored 100 points")
  end
  
  def test_3
    assert_equal 100, sum_scores("lena scored 50 points and lee scored 50 points")
  end
  
  def test_4
    assert_equal 100, sum_scores("sam scored 25 points, john scored 25 points, jim scored 25 points, and sue scored 25 points")
  end
  
  def test_5
    assert_equal 1, sum_scores("1 point scored by max")
  end
  
  def test_6
    assert_equal 0, sum_scores("no points scored in this game")
  end
  
  def test_7
    assert_equal 39, sum_scores("abc scored 3 points and def scored 9 points then ghi scored 27 points")
  end
  
  def test_8
    assert_equal 14, sum_scores("game score: pete 2 points, eve 4 points, zane 8 points")
  end
  
  def test_9
    assert_equal 3, sum_scores("jake scored1point, john scored2points")
  end
  
  def test_10
    assert_equal 0, sum_scores("this game ended with no score")
  end

puts "---Run manual checks---"
puts sum_scores("joe scored 5 points, while adam scored 10 points and bob scored 2, with an extra 1 point scored by joe")
puts sum_scores("michael scored 100 points")
puts sum_scores("lena scored 50 points and lee scored 50 points")
puts sum_scores("sam scored 25 points, john scored 25 points, jim scored 25 points, and sue scored 25 points")
puts sum_scores("1 point scored by max")
puts sum_scores("no points scored in this game")
puts sum_scores("abc scored 3 points and def scored 9 points then ghi scored 27 points")
puts sum_scores("game score: pete 2 points, eve 4 points, zane 8 points")
puts sum_scores("jake scored1point, john scored2points")
puts sum_scores("this game endped with no score")

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
