def add_days(date, number_of_days)
  # TODO: Implement the function to calculate the final date after adding `number_of_days` to `date`
  # HINT: Consider creating a separate function, `leap_year?(year)`, to determine if a year is a leap year
  # NOTE: Do NOT use Ruby's built-in date/time classes (Date/Time/DateTime) for this task; implement the math manually.
  puts "batman"
end

def assert_equal(expected, actual)
  if expected == actual
    puts "Pass: #{actual}"
  else
    puts "Fail: #{actual}, got #{expected}"
  end
end

def test_case_1
    assert_equal '2000-01-01', add_days('1999-01-01', 365)
  end

  def test_case_2
    assert_equal '2000-12-31', add_days('2000-01-01', 365)
  end

  def test_case_3
    assert_equal '2001-01-01', add_days('2000-01-01', 366)
  end

  def test_case_4
    assert_equal '2002-01-01', add_days('2001-12-31', 1)
  end

  def test_case_5
    assert_equal '2001-01-01', add_days('2000-12-31', 1)
  end

  def test_case_6
    assert_equal '2008-01-01', add_days('2004-01-01', 1461)
  end

  def test_case_7
    assert_equal '2036-11-22', add_days('1899-12-31', 50000)
  end

  def test_case_8
    assert_equal '2236-11-23', add_days('2099-12-31', 50000)
  end

  puts "---Run tests---"
  test_case_1
  test_case_2
  test_case_3
  test_case_4
  test_case_5
  test_case_6
  test_case_7
  test_case_8
