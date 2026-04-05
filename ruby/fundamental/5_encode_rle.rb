def encode_rle(str)
  groups = ''
  current_group_char = nil
  current_group_count = 0

  str.each_char do |char|
    if char.match?(/[[:alnum:]]/)
      if char == current_group_char
        current_group_count +=1
      else
        groups << (current_group_char + current_group_count.to_s) if current_group_char
        current_group_char = char
        current_group_count = 1
      end
    else
      groups << (current_group_char + current_group_count.to_s) if current_group_char
      current_group_char = nil
    end
  end
  groups << (current_group_char + current_group_count.to_s) if current_group_char
  groups
end

def assert_equal(expected, actual)
  if expected == actual
    puts "Pass: got '#{actual}'"
  else
    puts "Fail: Expected '#{expected}', got '#{actual}'"
  end
end

def test_1
    assert_equal "a2b3c2e1d2f1", encode_rle("aabbbcceddf")
  end

  def test_2
    assert_equal "a3b2c1d1e1", encode_rle("aaa@@bb!!c#d**e")
  end

  def test_3
    assert_equal "A213b3c1", encode_rle("AA111bbbc")
  end

  def test_4
    assert_equal "a1", encode_rle("a")
  end

  def test_5
    assert_equal "A3B1C2D1112131d1f1a1d1e1d1f1e333F7", encode_rle("AAABCC@@@D123df#$@# adedfeee333!!!!!FFFFFFF")
  end

  def test_6
    assert_equal "a1b1c1d1e1f1g1h1i1j1k1l1m1n1o1p1q1r1s1t1u1v1w1x1y1z1A1B1C1D1E1F1G1H1I1J1K1L1M1N1O1P1Q1R1S1T1U1V1W1X1Y1Z101112131415161718191", 
                 encode_rle("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789")
  end

  def test_7
    assert_equal "", encode_rle("")
  end

  def test_8
    assert_equal "11", encode_rle("1")
  end

  def test_9
    assert_equal "110210a11", encode_rle("11111111112222222222aaaaaaaaaaa")
  end

  def test_10
    assert_equal "A1a1B1b1C1c1D1d1E1e1F1f1G1g1H1h1I1i1J1j1K1k1L1l1M1m1N1n1O1o1P1p1Q1q1R1r1S1s1T1t1U1u1V1v1W1w1X1x1Y1y1Z1z1", 
                 encode_rle("AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz")
  end

  def test_11
    assert_equal "a3a1b1c1d1e1", encode_rle("aaa@ab!!c#d**e")
  end

puts "---Run manual---"
puts encode_rle("aabbbcceddf")
puts encode_rle("aaa@@bb!!c#d**e")
puts encode_rle("AA111bbbc")
puts encode_rle("a")
puts encode_rle("AAABCC@@@D123df#$@# adedfeee333!!!!!FFFFFFF")
puts encode_rle("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789")
puts encode_rle("")
puts encode_rle("1")
puts encode_rle("11111111112222222222aaaaaaaaaaa")
puts encode_rle("AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz")
puts encode_rle("aaa@ab!!c#d**e")


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
  test_11
