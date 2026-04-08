# TODO: Reorder the first alphabetic character following each number 
# to precede the number and remove any spaces or punctuation between them.

#Alternative, is more specific
#Always end with "." rather than other punc, remove double spaces
#and deal withh varying spaces either side of digit
def transform_string(input_string)
  transformed = input_string.gsub(/(\d+)[^0-9a-z]*([a-z])/i, '\2\1')
  transformed = transformed.gsub(/\s{2,}/, ' ')
  transformed.gsub(/[[:punct:]\s]+\z/, '') + "."
end

# def transform_string(input_string)
#   # input_string.gsub(/(\d)[^0-9a-z]([a-z])/, '\2\1')
#   input_string.gsub(/(\d+)[^0-9a-z]*([a-z])/i, '\2\1')
# end


def assert_equal(expected, actual)
  if expected == actual
    puts "Pass: got #{actual}"
  else
    puts "Fail: got #{actual}, expected #{expected}"
  end
end


#added tests based on first 10, note they looks similar on first glance
def test_1
assert_equal "I have a2pples and o5ranges and g3rapefruits.", transform_string("I have    2   apples and 5 oranges and 3 grapefruits.")
end

def test_2
assert_equal "f4oxes are chasing r1abbit.", transform_string("4 foxes are chasing 1 rabbit.")
end

def test_3
assert_equal "Let's meet at a7t the clock tower.", transform_string("Let's meet at 7 at the clock tower.")
end

def test_4
assert_equal "There are w8onders of the world.", transform_string("There are 8 wonders of the world.")
end

def test_5
assert_equal "I will bring b6ottles of water and p4ackets of chips.", transform_string("I will bring 6 bottles of water and 4 packets of chips.")
end

def test_6
assert_equal "It is a d9ay journey to the mountains.", transform_string("It is a 9 day journey to the mountains.")
end

def test_7
assert_equal "She has lived in c4ities and c2ountries.", transform_string("She has lived in 4 cities and 2 countries.")
end

def test_8
assert_equal "He walked m5iles to school every day.", transform_string("He walked 5 miles to school every day.")
end

def test_9
assert_equal "The city has g6ates.", transform_string("The city has 6 gates.")
end

def test_10
assert_equal "There are b3ooks on the table.", transform_string("There are 3 books on the table.")
end

def test_11
assert_equal "I have a2pples and o5ranges and g3rapefruits.", transform_string("I have 2apples and 5 oranges and 3 grapefruits.")
end

def test_12
assert_equal "f4oxes are chasing r1abbit.", transform_string("4@foxes are chasing 1 rabbit.")
end

def test_13
assert_equal "Let's meet at a7t the clock tower.", transform_string("Let's meet at 7  at the clock tower.")
end

def test_14
assert_equal "There are w8onders of the world.", transform_string("There are 8 wonders of the world..")
end

def test_15
assert_equal "I will bring b6ottles of water and p4ackets of chips.", transform_string("I will bring 6)bottles of water and 4(packets of chips.")
end

def test_16
assert_equal "It is a d9ay journey to the mountains.", transform_string("It is a 9   day journey to the mountains.")
end

def test_17
assert_equal "She has lived in c4ities and c25ountries.", transform_string("She has lived in 4 cities and 25 countries.")
end

def test_18
assert_equal "He walked m53iles to school every day.", transform_string("He walked 53miles to school every day.")
end

def test_19
assert_equal "The city has g6ates.", transform_string("The city has  6 gates.")
end

def test_20
assert_equal "There are b3ooks on the table.", transform_string("There are 3 books on the table!")
end

puts "---Running a quick visual---"
puts transform_string("I   have 2    apples and 5! oranges and 3 grapefruits.")

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
test_11
test_12
test_13
test_14
test_15
test_16
test_17
test_18
test_19
test_20
