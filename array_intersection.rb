require 'benchmark'
def intersection_ruby(arr1, arr2)
  arr1 & arr2
end


# find all common integers within two sorted arrays in ascending order (duplicates allowed)
def intersection(arr1, arr2)
  intersect = Array.new()
  i = 0
  j = 0
  arr1_size = arr1.size
  arr2_size = arr2.size
  #while i < arr1.size && j < arr2.size do # arr1.size and arr2.size called every loop
  while (i < arr1_size && j < arr2_size)
    if (arr1[i] == arr2[j])
      intersect << arr1[i]
      i += 1
      j += 1
    elsif (arr1[i] < arr2[j])
      i += 1
    else 
      j += 1
    end  
  end
  return intersect   
end


#tests
arr1 = [1,2,3,4,5,6,7]
arr2 = [1,3,5,7]
arr3 = [4, 6, 9, 11]
arr4 = [8, 9, 11, 14]
arr5 = Array.new(2000000)
arr6 = Array.new(2000000)
arr7 = [1,1,1,1,1,1,2,2,2,2,2,2,4,4,6,7,8,8]
arr8 = [2,2,2,2,6,8]


(0...2000000).each { |x|
  arr5[x] = rand(20000)
  arr6[x] = rand(20000)
}

puts "my intersection"
puts Benchmark.measure { intersection(arr5, arr6) }
puts "ruby intersection"
puts Benchmark.measure { intersection_ruby(arr5, arr6) }



