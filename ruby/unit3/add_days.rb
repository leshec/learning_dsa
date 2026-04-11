def is_leap_year?(year)
  (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
end

def days_in_month(month, year)
  lengths = { 
    1=>31, 2=>28, 3=>31, 4=>30, 5=>31, 6=>30, 
    7=>31, 8=>31, 9=>30, 10=>31, 11=>30, 12=>31 
  }
  return 29 if month == 2 && is_leap_year?(year)
  lengths[month]
end

def add_days(date, days_to_add)
  year, month, day = date.split('-').map(&:to_i)
  remaining = days_to_add

  while remaining > 0
    max_days = days_in_month(month, year)
    days_left_in_month = max_days - day

    if remaining <= days_left_in_month
      day += remaining
      remaining = 0
    else
      remaining -= (days_left_in_month + 1)
      day = 1
      month += 1
      
      if month > 12
        month = 1
        year += 1
      end
    end
  end

  format('%04d-%02d-%02d', year, month, day)
end

# def add_days(date, number_of_days)
#   result = ''
#   year, month, day = date.split('-').map(&:to_i)
#   months = { 1 => 31, 3 => 31, 4 =>30, 5 => 31, 6 => 30, 7 => 31, 8 => 31, 9 => 30, 10 => 31, 11 => 30, 12 => 31}
#
# days_left = number_of_days
#
# while days_left > 0
#   if day == 31 && month == 12
#     year +=1
#     month = 1
#     day =1
#     days_left -= 1
#   elsif month == 2 && day == 28
#           if is_leap_year(year)
#             day = 29
#           days_left -= 1
#           else
#             month = 3
#             day = 1
#           days_left -= 1
#           end
#   elsif month == 2 && day == 29
#     month = 3
#     day = 1
#     days_left -= 1
#   elsif month == 2
#     day += 1
#     days_left -= 1
#   elsif day < months[month]
#     day +=1
#     days_left -= 1
#   else
#     day = 1
#     month +=1
#     days_left -= 1
#   end
# end
# result << format('%04d-%02d-%02d', year, month, day)
# result
# end
#
#
# def is_leap_year(year)
#   if year % 100 == 0
#       if year % 400 == 0
#         return true
#       else 
#         return false
#       end
#   elsif year % 4 == 0
#     return true
#   else
#     return false
#   end
# end

def assert_equal(expected, actual)
  if expected == actual
    puts "Pass: #{actual}"
  else
    puts "Fail: #{actual}, expected #{expected}"
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
