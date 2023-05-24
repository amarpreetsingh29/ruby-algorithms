def k_largest(arr, k)
  temp = arr.sort do |a , b|
    a - b
  end

  temp[k-1]
end

input = [6,2,5,7]
puts k_largest(input, 2)
