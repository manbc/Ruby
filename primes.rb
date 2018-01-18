#finds all prime numbers up to n and returns it as a array

def sieve(n)
  number_array = Array.new()
  (2..n).each do |x|
    number_array[x] = x
  end

  #only loops up to sqrt(n) truncated so x * x < n
  (2..Math.sqrt(n).to_i).each do |x|
    if (number_array[x] != nil) 
      y = x * x
      while y <= n do
        number_array[y] = nil
        y += x
      end
    end
  end
  number_array.select! { |x| x != nil }
  puts number_array
end

sieve(1000)
