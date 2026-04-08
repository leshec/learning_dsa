# The number of times the clock passes an HH:MM:00 mark.
# In test_3, the time moves from 00:59:59 to 01:00:00, 
# which means it crosses the 01:00:00 mark, counting as 1 minute.u

def get_seconds(time)
  time_parts = time.split(':').map(&:to_i)
  seconds_since_start = time_parts[0] * 3600 + time_parts[1] * 60 + time_parts[2]
  total_seconds = (seconds_since_start) % (24 * 3600)
  total_seconds
end


def time_period_length(time_period)
  start_time, end_time = time_period.split('-')
  end_time = end_time.strip
  start_time_in_seconds = get_seconds(start_time)
  end_time_in_seconds = get_seconds(end_time)
  diff_in_mins = (end_time_in_seconds / 60) - (start_time_in_seconds / 60)
  diff_in_mins
end

time_period_length("01:05:05 - 16:30:50")

def assert_equal(expected, actual)
  if expected == actual
    puts "Pass: #{actual}"
  else
    puts "Fail: #{actual}, got #{expected}"
  end
end

def test_1
    assert_equal 0, time_period_length("00:00:00 - 00:00:01")
  end

  def test_2
    assert_equal 1, time_period_length("00:00:00 - 00:01:00")
  end

  def test_3
    assert_equal 1, time_period_length("00:59:59 - 01:00:00")
  end

  def test_4
    assert_equal 1439, time_period_length("00:00:00 - 23:59:59")
  end

  def test_5
    assert_equal 925, time_period_length("01:05:05 - 16:30:50")
  end

  def test_6
    assert_equal 105, time_period_length("12:15:30 - 14:00:00")
  end

  def test_7
    assert_equal 232, time_period_length("02:45:20 - 06:37:35")
  end

    puts "---Run tests---"
  test_1
  test_2
  test_3
  test_4
  test_5
  test_6
  test_7

