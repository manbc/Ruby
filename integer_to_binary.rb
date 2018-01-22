require "test/unit/assertions.rb"
include Test::Unit::Assertions
BASE = 2
#converts a integer > 0 to binary in an array where the index represents the exponent
def binary_to_int(n)
  bitset = Array.new()
  while (n > 0) do
    x = largest_power_of_2(n)
    if (x != nil)
      bitset[x] = 1
      n -= BASE ** x
    end
  end
  bitset.map! { |x| 
    if (x == nil) 
      x = 0
      else
      x = 1
    end
  }
  return bitset
end

#finds the largest exponent e where 2 ** e < n
#usage: n must be > 0
def largest_power_of_2(n)
  if (n <= 0) #usage condition check
    return
  end
  exponent = 0
  current = BASE ** exponent
  while (current <= n)
    if (current == n)
      return exponent
    end
    exponent += 1
    current = BASE ** exponent # recalculate power
  end
  return exponent - 1
end

#displays a integer as binary string for values of n > 0
def display_binary(n)
  if (n <= 0)
    return
  end
  display_string = binary_to_int(n).to_s
  display_string.tr!("[], ", "")
  display_string.reverse!
  puts "#{n} in binary is: #{display_string}"
  return display_string
end

# largest_power_of_2 tests
assert_equal(largest_power_of_2(0), nil, "n = 0")
assert_equal(largest_power_of_2(1), 0, "n = 1")
assert_equal(largest_power_of_2(2), 1, "n = 2")
assert_equal(largest_power_of_2(4), 2, "n = 4")
assert_equal(largest_power_of_2(9), 3, "n = 9")
assert_equal(largest_power_of_2(64), 6, "n = 64")
assert_equal(largest_power_of_2(300), 8, "n = 300")
assert_equal(largest_power_of_2(5000000000), 32, "n = 5000000000")

# display_binary tests
assert_equal(display_binary(300), "100101100", "n = 300")
assert_equal(display_binary(4), "100", "n = 4")
assert_equal(display_binary(16), "10000", "n = 16")
assert_equal(display_binary(15), "1111", "n = 15")
assert_equal(display_binary(342534), "1010011101000000110", "n = 342534") 
