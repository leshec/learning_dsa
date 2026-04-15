# TODO: Replace all occurrences of `old` in `text` with `new_str`

def replace_substring(text, old, new_str)
 text.gsub(old, new_str)
end


def assert_equal(expected, actual)
  if expected == actual
    puts "Pass: got #{actual}"
  else 
    puts "FAIL: got #{actual}, expected #{expected}"
  end
end

 def test_1
    assert_equal "hello friend", replace_substring("hello world", "world", "friend")
  end

  def test_2
    assert_equal "i love coding", replace_substring("i love coding", "code", "craft")
  end

  def test_3
    assert_equal "it is a gloomy day", replace_substring("it is a beautiful day", "beautiful", "gloomy")
  end

  def test_4
    assert_equal "practice makes better", replace_substring("practice makes perfect", "perfect", "better")
  end

  def test_5
    assert_equal "keep calm and code on", replace_substring("keep calm and carry on", "carry on", "code on")
  end

  def test_6
    assert_equal "short text short text", replace_substring("long text long text", "long", "short")
  end

  def test_7
    assert_equal " case", replace_substring("lower case", "lower", "")
  end

  def test_8
    assert_equal "a quick brown fox skips over a lazy dog", replace_substring("a quick brown fox jumps over a lazy dog", "jumps", "skips")
  end

  def test_9
    assert_equal "that is a test", replace_substring("this is a test", "this", "that")
  end

  def test_10
    assert_equal "final test example", replace_substring("final test case", "case", "example")
  end

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
  test_10
