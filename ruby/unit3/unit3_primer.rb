def parse_and_add_seconds(time, seconds_to_add)

#add type conversion
seconds_to_add = seconds_to_add.to_i

time_parts = time.split(':').map(&:to_i)

seconds_since_start = time_parts[0] * 3600 + time_parts[1] * 60 + time_parts[2]

total_seconds = (seconds_since_start + seconds_to_add) % (24 * 3600)

hours = total_seconds / 3600
remainder = total_seconds % 3600
minutes = remainder / 60
seconds = remainder % 60

format('%02d:%02d:%02d', hours, minutes, seconds)
end


puts parse_and_add_seconds("12:02:45", "25")
