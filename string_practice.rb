def first_non_repeat(str)
  hash = Hash.new(0)
  str.each_char { |char|
    hash[char] += 1
  }
  hash.each { |key, value|
    if (value == 1)
      return key
    end
  }
end

def string_reverse_iterative(str)
  reverse = StringIO.new
  (str.length-1).downto(0) { |i|
    reverse << str[i]
  }
  return reverse.string
end

def string_reverse_recursive(str)
  if (str.length == 1)
    return str
  end
  return str[-1] + string_reverse_recursive(str[0, str.length - 1])
end

#puts string_reverse_iterative("hello world")
#puts string_reverse_iterative("good bye cruel world")

#puts string_reverse_recursive("hello world")
#puts string_reverse_recursive("good bye cruel world")
#puts string_reverse_recursive("homer simpson is very hungry")

def is_anagram?(str1, str2)
  str1_hash = Hash.new(0)
  str2_hash = Hash.new(0)

  str1.each_char { |char|
    str1_hash[char] += 1
  }
  str2.each_char { |char|
    str2_hash[char] += 1
  }
  return str1_hash == str2_hash
end
=begin
str1 = "rail safety"
str2 = "fairy tales"
str3 = "hello world"
str4 = "world hello"
str5 = "failure"

puts "anagram" if is_anagram?(str1, str2)
puts "anagram" if is_anagram?(str3, str4)
puts "anagram" if is_anagram?(str1, str5)
=end
def is_palindrome?(str)
  #return str == str.reverse 
  left = 0
  right = str.length - 1
  while (left != right)
    if (str[left] != str[right])
      return false
    end
    left += 1
    right -= 1
  end
  return true
end
=begin
puts is_palindrome?("level")
puts is_palindrome?("angry")
puts is_palindrome?("civic")
=end
def str_unique_char?(str)
  hash = Hash.new(0)
  str.each_char { |char|
    if hash[char] == 1
      return false
    else
      hash[char] += 1  
    end  
  }
  return true
end

=begin
puts str_unique_char?("asdfasdfasdfasdfasdf")
puts str_unique_char?("abcdefghijklmnopqrstuvwxyz")
puts str_unique_char?("rage against the dying of the light")
=end

#usage: str must be a string of an integer
ASCII_ZERO = 48
def string_to_int(str)
  integer = 0
  length = -str.length
  multiplier = 1;
  -1.downto(length) { |x|
    integer += (str[x].ord - ASCII_ZERO) * multiplier
    multiplier *= 10
  }
  return integer
end

=begin
puts string_to_int("123")
puts string_to_int("23452345423524")
=end

#only takes single characters
def is_num?(char)
  value = char.ord - ASCII_ZERO
  if (value >= 0 && value <= 9)
    return true
  end
  return false
end

=begin
puts is_num?("a")
puts is_num?("9")
=end
def string_permutations

end

