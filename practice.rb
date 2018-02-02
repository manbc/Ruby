def most_frequent_int(arr)
  int_counter = Hash.new(0)
  arr.each { |x|
    int_counter[x] += 1
  }
  puts int_counter.to_s
end

#arr = [1,2,3,4,5,6,7,8,9,1,2,3,4,5,6,7,8,9,1,1,2,2,2,2,2,3,3,4,4,4,4,4,5,5,5,5]
#most_frequent_int(arr)

def pairs_in_array_sum(arr, sum)
  arr.sort
  x = 0
  y = arr.length - 1
  pairs = Array.new()
  while x < y
    if arr[x] + arr[y] > sum
      y -= 1
    elsif arr[x] + arr[y] < sum
      x += 1
    else
      pairs << [arr[x], arr[y]]
      x += 1
      y -= 1
    end
  end
  return pairs
end
sums_arr = [1,2,3,4,5,6,7,8,9]
puts pairs_in_array_sum(sums_arr, 10).to_s


