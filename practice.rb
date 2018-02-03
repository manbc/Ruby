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

=begin
sums_arr = [1,2,3,4,5,6,7,8,9]
puts pairs_in_array_sum(sums_arr, 15).to_s
=end

#steps to solution
#brute force first then optimize
#does not work for duplicates
def rotated?(original, arr)
  #check size
  if original.length != arr.length
    return false
  end

  #find first element of original in arr
  first_element_index = nil
  for i in 0...arr.length
    if (arr[i] == original[0])
      first_element_index = i
      puts "first element index = #{i}"
      break
    end
  end

  if (!first_element_index)
    return false
  end

  for i in 0...arr.length
    if (original[i] != arr[(i + first_element_index) % arr.length])
      return false
    end
  end
  return true
  end
=begin
org_array = [1,2,3,4,5]
rotated_array = [4,5,1,2,3]

org1 = [6,5,4,3,2,7,8]n
arr2 = [7,8,6,5,4,3,2]

puts "its working" if rotated?(org1, arr2) 
=end
=begin
#displays the nth fib number
def fib_recursive(n)
  if (n == 1)
    return 1
  end
  if (n == 0)
    return 0
  end
  return fib_recursive(n - 1) + fib_recursive(n -2)
end

puts "fib recursive output"
puts fib_recursive(30)


def fib_iterative(n)
  num1 = 0
  num2 = 1
  n.times {
    temp = num1 + num2
    num1 = num2
    num2 = temp
  }
  return num1
end

puts "fib iterative output"
puts fib_iterative(30)
=end
=begin
fib_arr = Array.new()
def fib_dynamic(n, fib_arr)
  if (fib_arr[n] != nil)
    return fib_arr[n]
  end
  if (fib_arr.empty?)
    fib_arr << 0
    fib_arr << 1
    n.times {
      fib_arr << fib_arr[fib_arr.length - 1] + fib_arr[fib_arr.length - 2]
    }
  else
    y = n - fib_arr.length + 1
    y.times {
      fib_arr << fib_arr[fib_arr.length - 1] + fib_arr[fib_arr.length - 2]
    }
  end
  return fib_arr[n]
end

puts fib_dynamic(50, fib_arr)

puts fib_dynamic(70, fib_arr)

=end
=begin
#find element in array that occurs only once
test_array = [12341234, 1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,4,4,4,4,4,5,5,6,6,6,6,6,6,7,7,8,8,8,8]
#brute force
def unique_element(arr)
  hash = Hash.new(0)
  arr.each { |x|
    hash[x] += 1
  }
  hash.each { |key, value|
    if (value == 1)
      return key
    end
  }
end

puts unique_element(test_array)

=end
=begin
def intersection(arr1, arr2)
  arr1.sort # nlogn
  arr2.sort # mlogm
  intersect_array = Array.new()
  x = 0
  y = 0
  while (x < arr1.length && y < arr2.length)
    if (arr1[x] == arr2[y])
      intersect_array << arr1[x]
      x += 1
      y += 1
    elsif (arr1[x] < arr2[y])
      x +=1
    else
      y +=1
    end
  end
  return intersect_array
end

def intersection_no_sort(arr1, arr2)
  intersect_array = Array.new()
  if arr1.length < arr2.length
    arr1.each { |x|
      arr2.each { |y|
        if x == y
          intersect_array << x
        end
      }
    }
  else
    arr2.each { |x|
      arr1. each { |y|
        if x == y
          intersect_array << x
        end
      }
    }
  end
  return intersect_array
end

arr1 = [3,6,9,12,15,18,21,24]
arr2 = [2,4,6,8,10,12,14,16,18,20,22,24]
arr3 = [6,12,18,24,30]
arr4 = [5,6,7,2,1]
arr5 = [1,5,3,6,8,9,11,2]

puts intersection_no_sort(arr4, arr5).to_s
=end
=begin
arr = [1,3,5,7,9]
arr2 = [0,1,2,3,4,5]
def binary_search(arr, x)
  arr.sort
  max = arr.length - 1
  min = 0
  mid = arr.length/2
  while (min <= max)
    if (arr[mid] == x)
      return mid
    elsif (arr[mid] > x)
      max = mid - 1
   else
      min = mid + 1
    end
    mid = (max + min) / 2
  end
  return -1
end

puts binary_search(arr2, 4)
=end

def binary_search_rotated(arr, x)
  #find the rotated element index

end

