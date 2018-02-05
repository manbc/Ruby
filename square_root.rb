require_relative "floor_square_root"
def sqrt(n)
  actual = Math.sqrt(n)
  #find closest perfect square
  guess = floor_sqrt(n)
  stopper = 0
  while (guess != actual && stopper < 50)
    x = n / guess
    #get average
    guess = (guess + x)/2.0
    puts guess
    stopper += 1
  end
  return guess
end

puts "Actual: #{Math.sqrt(5)}"

sqrt(5)

puts "Actual: #{Math.sqrt(11)}"

sqrt(11)

puts "Actual: #{Math.sqrt(22)}"

sqrt(22)

puts "Actual: #{Math.sqrt(31)}"

sqrt(31)

puts "Actual: #{Math.sqrt(123)}"

sqrt(123)
