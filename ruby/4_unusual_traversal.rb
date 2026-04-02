#What I learnt: 
# 1) if you rely on tests
#and they are wrong
#you are screwed
# 2) read question [1,2,3,4,5,6,7], the left means 2,3 not 3,2
# "two from the left" was in order
# as the example showed
def unusual_traversal(array)
  mid = array.length / 2
  answer = [array[mid]]
  left = mid - 1
  right = mid + 1
  while left >= 0 || right < array.length
    answer << array[left - 1 ] if left >= 1
    answer << array[left] if left >= 0
    answer << array[right] if right < array.length
    answer << array[right + 1] if right < array.length - 1
    left -= 2
    right += 2
    end
  answer
end

# **For example**, 
# for `array = [1, 2, 3, 4, 5, 6, 7]`, 
# your function should return `[4, 2, 3, 5, 6, 1, 7]`. 
#
# And for `array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]`, 
# your function should return `[6, 4, 5, 7, 8, 2, 3, 9, 10, 1, 11]`.

def assert_equal(expected, actual)
  if expected == actual
    puts "Pass: #{actual}"
  else
    puts "Fail: actual: #{actual}  expected: #{expected}"
  end
end


def test_1
    assert_equal(
      unusual_traversal([1, 2, 3, 4, 5]), 
      [3, 1, 2, 4, 5]
    )
  end
  
  def test_2
    assert_equal(
      unusual_traversal([1, 2, 3, 4, 5, 6, 7]), 
      [4, 2, 3, 5, 6, 1, 7]
    )
  end

  def test_3
    assert_equal(
      unusual_traversal([-1, -10, -100, 0, 100]), 
      [-100, -1, -10, 0, 100]
    )
  end

  def test_4
    assert_equal(
      unusual_traversal([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]), 
      [6, 4, 5, 7, 8, 2, 3, 9, 10, 1, 11]
    )
  end

  def test_5
    assert_equal(unusual_traversal([100]), [100])
  end

  def test_6
    assert_equal(
      unusual_traversal((1..501).step(2).to_a),
      [251, 247, 249, 253, 255, 243, 245, 257, 259, 239, 241, 261, 263, 235, 237, 265, 267, 231, 233, 269, 271,
       227, 229, 273, 275, 223, 225, 277, 279, 219, 221, 281, 283, 215, 217, 285, 287, 211, 213, 289, 291, 207,
       209, 293, 295, 203, 205, 297, 299, 199, 201, 301, 303, 195, 197, 305, 307, 191, 193, 309, 311, 187, 189,
       313, 315, 183, 185, 317, 319, 179, 181, 321, 323, 175, 177, 325, 327, 171, 173, 329, 331, 167, 169, 333,
       335, 163, 165, 337, 339, 159, 161, 341, 343, 155, 157, 345, 347, 151, 153, 349, 351, 147, 149, 353, 355,
       143, 145, 357, 359, 139, 141, 361, 363, 135, 137, 365, 367, 131, 133, 369, 371, 127, 129, 373, 375, 123,
       125, 377, 379, 119, 121, 381, 383, 115, 117, 385, 387, 111, 113, 389, 391, 107, 109, 393, 395, 103, 105,
       397, 399, 99, 101, 401, 403, 95, 97, 405, 407, 91, 93, 409, 411, 87, 89, 413, 415, 83, 85, 417, 419, 79,
       81, 421, 423, 75, 77, 425, 427, 71, 73, 429, 431, 67, 69, 433, 435, 63, 65, 437, 439, 59, 61, 441, 443,
       55, 57, 445, 447, 51, 53, 449, 451, 47, 49, 453, 455, 43, 45, 457, 459, 39, 41, 461, 463, 35, 37, 465,
       467, 31, 33, 469, 471, 27, 29, 473, 475, 23, 25, 477, 479, 19, 21, 481, 483, 15, 17, 485, 487, 11, 13,
       489, 491, 7, 9, 493, 495, 3, 5, 497, 499, 1, 501])
  end

puts "---Run tests----"
test_1
test_2
test_3
test_4
test_5
test_6
