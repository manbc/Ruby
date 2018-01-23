require "test/unit/assertions.rb"
include Test::Unit::Assertions

#simple string matching function that returns a boolean if str1 is contained in str2
#usage: str1.length <= str2.length
def matching_string(str1, str2)

  if str1.length > str2.length
    return false
  end

  match = false
  for i in 0..str2.length - str1.length
    if match
      break
    end
    if str2[i] == str1[0] 
      for k in 1..str1.length
        if str2[i+k] == str1[k]
          if k == str1.length - 1
            match = true
          end
          next
        else
          break
        end
      end
    end
  end
  return match
end

#matching_string tests
assert_equal(matching_string("ab", "abomination"), true, "str1 = ab, str2 = abomination")
assert_equal(matching_string("hello", "hello world"), true, "str1 = hello, str 2= hello world")
assert_equal(matching_string("angry", "he is very angr."), false, "str1 = angry, str2 = he is very angr.")
assert_equal(matching_string("tom", "hisnameistommy"), true, "str1 = tom, str2 = hisnameistommy")
assert_equal(matching_string("jimmy", "jamjiomjiamjinnjiomjimjimmy"), true, "str1 = jimmy, str2 = jamjiomjiamjinnjiomjimjimmy")

puts "MATCHING" if matching_string("asdfasdfasdf", "1234567asdf12341234asdfasdfasdf12341234")
