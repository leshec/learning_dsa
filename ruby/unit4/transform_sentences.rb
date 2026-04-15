def transform_sentences(sentences, words)
  # TODO: Replace each word in the corresponding sentence with its reversed form, preserving case for the first letter.
  puts "yo"
end



def assert_equal(expected, actual)
  if expected == actual
    puts "Pass: got #{actual}"
  else 
    puts "FAIL: got #{actual}, expected #{expected}"
  end
end

def test_1
    assert_equal(['this is a elpmis example.', 'the name is dnob. james dnob.', 'remove every single e'], transform_sentences(['this is a simple example.', 'the name is bond. james bond.', 'remove every single e'], ['simple', 'bond', 'e']))
  end

  def test_2
    assert_equal(['hello dlrow!', 'i am ereh', 'python is evol'], transform_sentences(['hello world!', 'i am here', 'python is love'], ['world', 'here', 'love']))
  end

  def test_3
    assert_equal(['i ma not a robot', 'you era not alone', 'we era all together'], transform_sentences(['i am not a robot', 'you are not alone', 'we are all together'], ['am', 'are', 'are']))
  end

  def test_4
    assert_equal(['apple', 'ball', 'cat'], transform_sentences(['apple', 'ball', 'cat'], ['a', 'b', 'c']))
  end

  def test_5
    assert_equal(['this is a tset', '', '', 'eno more'], transform_sentences(['this is a test', '', '', 'one more'], ['test', 'a', 'b', 'one']))
  end

  def test_6
    assert_equal(['lower case ecnetnes', 'upper case Ecnetnes', 'another Ecnetnes here', 'final Ecnetnes yay'], transform_sentences(['lower case sentence', 'upper case Sentence', 'another Sentence here', 'final Sentence yay'], ['sentence', 'sentence', 'sentence', 'sentence']))
  end

  def test_7
    assert_equal(['this is a yrev yrev long sentence just to check the maximum limit of the sentence. see if it can handle the maximum characters or not.', 'can it eldnah', 'ti or not', "let's ees."], transform_sentences(['this is a very very long sentence just to check the maximum limit of the sentence. see if it can handle the maximum characters or not.', 'can it handle', 'it or not', "let's see."], ['very', 'handle', 'it', 'see']))
  end

  def test_8
    assert_equal(['tsuj a string', 'with emos words', 'and gnihton else'], transform_sentences(['just a string', 'with some words', 'and nothing else'], ['just', 'some', 'nothing']))
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
