def add_seconds_to_times(time_points, added_seconds)

result = []

time_points.each do |time|
seconds_to_add = added_seconds.to_i

time_parts = time.split(':').map(&:to_i)

seconds_since_start = time_parts[0] * 3600 + time_parts[1] * 60 + time_parts[2]

total_seconds = (seconds_since_start + seconds_to_add) % (24 * 3600)

hours = total_seconds / 3600
remainder = total_seconds % 3600
minutes = remainder / 60
seconds = remainder % 60

result << format('%02d:%02d:%02d', hours, minutes, seconds)
end
result
end

def assert_equal(expected, actual)
  if expected == actual
    puts "Pass: #{actual}"
  else
    puts "Fail: #{actual}, got #{expected}"
  end
end

def test_1
    assert_equal(
      ['11:00:00', '00:30:00'],
      add_seconds_to_times(['10:00:00', '23:30:00'], 3600)
    )
  end

  def test_2
    assert_equal(
      ['23:59:59'],
      add_seconds_to_times(['00:00:00'], 86399)
    )
  end

  def test_3
    assert_equal(
      ['03:00:00', '04:00:00', '05:00:00'],
      add_seconds_to_times(['01:00:00', '02:00:00', '03:00:00'], 7200)
    )
  end

  def test_4
    assert_equal(
      ['00:00:00'],
      add_seconds_to_times(['23:59:59'], 1)
    )
  end

  def test_5
    assert_equal(
      ['00:00:00'],
      add_seconds_to_times(['12:00:00'], 43200)
    )
  end

  def test_6
    assert_equal(
      ['23:59:03', '23:59:04', '23:59:05'],
      add_seconds_to_times(['23:59:01', '23:59:02', '23:59:03'], 2)
    )
  end

  def test_7
    assert_equal(
      ['13:14:15', '16:17:18', '19:20:21', '22:23:24'],
      add_seconds_to_times(['13:14:15', '16:17:18', '19:20:21', '22:23:24'], 0)
    )
  end

  def test_8
    assert_equal(
      ['00:00:31', '00:00:32', '00:00:33', '00:00:34', '00:00:35', '00:00:36', '00:00:37', '00:00:38', '00:00:39', '00:00:40'],
      add_seconds_to_times(['00:00:01', '00:00:02', '00:00:03', '00:00:04', '00:00:05', '00:00:06', '00:00:07', '00:00:08', '00:00:09', '00:00:10'], 30)
    )
  end

  puts "---Run tests---"
  test_1
  test_2
  test_3
  test_4
  test_5
  test_6
  test_7
  test_8
