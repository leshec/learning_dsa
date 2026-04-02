#Similar to the last one
#Although special chars and spaces 
#are consecutively counted this time
#Diff: not RL encoded, its left to right
# Brief: Your method should return an array of arrays. 
# Each inner array will consist of the repeating character and the number of its repetitions.
# If the input string is "aaabbcccdde", the method should 
# output: [["e", 1], ["d", 2], ["c", 3], ["b", 2], ["a", 3]].

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

