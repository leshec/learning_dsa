# TODO: Reorder the first alphabetic character following each number 
# to precede the number and remove any spaces or punctuation between them.
def transform_string(input_string)
  # input_string.gsub(/(\d)[^0-9a-z]([a-z])/, '\2\1')
  input_string.gsub(/(\d+)[^0-9a-z]*([a-z])/i, '\2\1')
end

puts transform_string("I have 2 apples and 5! oranges and 3 grapefruits.")
