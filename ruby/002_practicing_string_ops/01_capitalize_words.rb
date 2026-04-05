# TODO: Transform each word to start with a capital letter while making the rest lowercase.

def capitalize_words(input_str)
  input_str.split.map{|word| word.downcase.capitalize}.join(' ')
end

def assert_equal(expected, actual)
  if expected == actual
    puts "Pass: got '#{actual}'"
  else
    puts "Fail: got '#{actual}', expected '#{expected}'"
  end
end

 def test_1
    assert_equal 'Hello World', capitalize_words("hello world")
  end

  def test_2
    assert_equal 'Hello World', capitalize_words("HELLO WORLD")
  end

  def test_3
    assert_equal '123 Hello', capitalize_words("123 hello")
  end

  def test_4
    assert_equal '_underscore', capitalize_words("_underscore")
  end

  def test_5
    assert_equal 'First Second Third Fourth Fifth Sixth Seventh Eights Ninth Tenth',
                 capitalize_words("first second third fourth fifth sixth seventh eights ninth tenth")
  end

  def test_6
    assert_equal 'Single', capitalize_words("single")
  end

  def test_7
    assert_equal 'Hello Neat Ruby_123', capitalize_words("Hello neat ruby_123")
  end

  def test_8
    assert_equal 'Some Random _text', capitalize_words("SoME rAndoM _TeXT")
  end

  def test_9
    assert_equal 'Caps Lock Is On', capitalize_words("CAPS lock IS on")
  end

  def test_10
    assert_equal 'Mixed Case Sample', capitalize_words("mIxEd CaSe sample")
  end


puts "---manual checks----" 
    puts capitalize_words("hello world")
  

  
    puts capitalize_words("HELLO WORLD")
  

  
    puts capitalize_words("123 hello")
  

  
    puts capitalize_words("_underscore")
  

  
    puts capitalize_words("first second third fourth fifth sixth seventh eights ninth tenth")
  

  
    puts capitalize_words("single")
  

  
    puts capitalize_words("Hello neat ruby_123")
  

  
    puts capitalize_words("SoME rAndoM _TeXT")
  

  
    puts capitalize_words("CAPS lock IS on")
  

    puts capitalize_words("mIxEd CaSe sample")
  
    puts "---tests---"
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
