#Euclid's algorithm implementation
#recursive solution
#usage: x and y cannot be negative 
def gcd_recursion(x, y)
	if y == 0
		return x
	end
	gcd_recursion(y, x % y)
end

#iterative solution
def gcd_iterative(x, y)
	while y != 0 do
		oldx = x
		x = y
		y = oldx % y
	end
	return x
end

def gcd_alternate(x, y)
	x > y ? starting_divisor = y : starting_divisor = x
	while starting_divisor != 0 do
		if (x % starting_divisor == 0 && y % starting_divisor == 0)
			return starting_divisor
		end
		starting_divisor -= 1
	end
end

puts gcd_alternate(344, 234)


