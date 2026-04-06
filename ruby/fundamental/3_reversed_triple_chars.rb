def reversed_triple_chars(s)
  # TODO: Reverse groups of three characters in the string while preserving the order of the groups.
  result = ''
  while s.length >=3
    result << s.slice!(0,3).reverse
  end
  result << s
  result
end

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

