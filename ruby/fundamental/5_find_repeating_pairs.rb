#input is an even length
#count pairs consecutively occuring without overlap
def find_repeating_pairs(s)
 groups = ''
  current_group_char = nil
  current_group_length = 0

   s.chars.each_slice(2) do |double_char|
     pair = double_char.join
      if pair == current_group_char
        current_group_length +=1
      else
        groups << (current_group_char + current_group_length.to_s) if current_group_char
        current_group_char = pair
        current_group_length = 1
  end
  end
    groups << (current_group_char + current_group_length.to_s) if current_group_char
  groups
end



def assert_equal(expected, actual)
  if expected == actual
    puts "Pass: got '#{actual}'"
  else
    puts "Fail: expected '#{expected}, got '#{actual}'"
  end
end

def test_1
    assert_equal "aa1ab2ba3ca1", find_repeating_pairs("aaababbababaca")
  end

  def test_2
    assert_equal "ab1ca1bc1ab1ca1bc1ab1", find_repeating_pairs("abcabcabcabcab")
  end

  def test_3
    assert_equal "ab1", find_repeating_pairs("ab")
  end

  def test_4
    assert_equal "cc1dd1aa1ee1ff1", find_repeating_pairs("ccddaaeeff")
  end

  def test_5
    assert_equal "ee1ff1gg1", find_repeating_pairs("eeffgg")
  end


puts "---Running manual---"
puts find_repeating_pairs("aaababbababaca")
puts find_repeating_pairs("abcabcabcabcab")
puts find_repeating_pairs("ab")
puts find_repeating_pairs("ccddaaeeff")
puts find_repeating_pairs("eeffgg")

puts "---Running tests---"
test_1
test_2
test_3
test_4
test_5
