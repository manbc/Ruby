#floor(sqrt(n)) with only basic arithmetical operations
# n > 0

def floor_sqrt(n)
  x = 2
  while (x * x <= n) do
    x += 1
  end
  x - 1
end

#puts floor_sqrt(234)
#puts floor_sqrt(16)
