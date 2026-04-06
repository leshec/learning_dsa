
def consecutive_groups_reverse(s)
  groups = []
  current_group_char = nil
  current_group_length = 0

    (s.length - 1).downto(0) do |i|
      if s[i] == current_group_char
        current_group_length +=1
      else
        groups << [current_group_char, current_group_length] if current_group_char
        current_group_char = s[i]
        current_group_length = 1
  end
  end
  groups << [current_group_char, current_group_length] if current_group_char
  groups
end

puts consecutive_groups_reverse("aaabbcccddee").inspect

#Above avoids having to allocate to reverse the string

# def consecutive_groups_reverse(s)
#   str = s.reverse
#   groups = []
#   current_group_char = nil
#   current_group_length = 0
#
#   str.each_char do |char|
#       if char == current_group_char
#         current_group_length +=1
#       else
#         groups << [current_group_char, current_group_length] if current_group_char
#         current_group_char = char
#         current_group_length = 1
#   end
#   end
#   groups << [current_group_char, current_group_length] if current_group_char
#   groups
# end

