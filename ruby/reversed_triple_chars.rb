def reversed_triple_chars(s)
  # TODO: Reverse groups of three characters in the string while preserving the order of the groups.
  result = ''
  while s.length >=3
    result << s.slice!(0,3).reverse
  end
  result << s
  result
end

#
 puts "--- Running Manual Checks ---"
 puts reversed_triple_chars("abcdef")
#
 def assert_equal(expected, actual)
   if expected == actual
     puts "PASS: Got '#{actual}'"
   else
     puts "FAIL: Expected '#{expected}', but got '#{actual}'"
   end
 end


   def test_1
     assert_equal "cbafed", reversed_triple_chars("abcdef")
   end

   def test_2
     assert_equal "s", reversed_triple_chars("s")
   end
   
   def test_3
     assert_equal "versretdepircelrahs", reversed_triple_chars("reversedtriplechars")
   end

   def test_4
     assert_equal "cba", reversed_triple_chars("abc")
   end

   def test_5
     assert_equal "lehlo", reversed_triple_chars("hello")
   end

   def test_6
     assert_equal "cbafedg", reversed_triple_chars("abcdefg")
   end

   def test_7
     assert_equal "lehpolhtyon", reversed_triple_chars("hellopython")
   end

   def test_8
     assert_equal "ab", reversed_triple_chars("ab")
   end

 puts "--- Running Manual Checks ---"
 puts reversed_triple_chars("abcdef")
 puts reversed_triple_chars("s")
 puts reversed_triple_chars("reversedtriplechars")
 puts reversed_triple_chars("abc")
 puts reversed_triple_chars("hello")
 puts reversed_triple_chars("abcdefg")
 puts reversed_triple_chars("hellopython")

 puts "\n--- Running Test Suite ---"
 test_1
 test_2
 test_3
 test_4
 test_5
 test_6
 test_7
 test_8

 # In this task, you are provided with a string s containing only lowercase English letters. Your goal is to transform the string by reversing every group of three consecutive characters, while keeping the remaining characters (if fewer than three) unchanged. The transformed string should preserve the order of these reversed groups.
 # For example:
 # If s = "abcdef", the output should be "cbafed".
 # If s = "abcdefg", the output should be "cbafedg".
 # The string s will have a length between 1 and 300, inclusive.
 # Steps to Achieve the Task:
 # Divide the string into groups of three characters.
 # Reverse the characters within each group.
 # Concatenate all the groups back together, keeping the reversed order within each group.
 # If there are fewer than three characters in the final group, leave them unchanged.

# Great work on passing the practice! 🚀 Your use of slice! is a very efficient way to consume the string.
# Another common approach is to use a loop that jumps by 3 indices at a time (using .step(3)) to grab substrings without modifying the original string. You could also explore using Ruby's scan method with a regular expression to break the string into chunks of three!
