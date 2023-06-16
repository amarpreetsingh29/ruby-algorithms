# Given an array of n positive integers and a positive integer s,
# find the minimal length of a contiguous subarray of which the sum ≥ s.
# If there isn't one, return 0 instead.

def min_size_subarray_with_sum_equal_to_number(arr, s)
  return if arr.nil? || s.nil?

  i = j = 0
  n = arr.length
  min_length = nil
  sum = 0
  result = nil

  while i < n
    if j<n
      sum+=arr[j]
      if sum == s
        if min_length.nil? || j-i < min_length
          result = arr.slice(i..j)
        end
        i+=1
        j=i
        sum = 0
      elsif sum > s
        i+=1
        j=i
        sum = 0
      else
        j+=1
      end
    else
      i+=1
      j=i
      sum = 0
    end
  end

  result
end

p min_size_subarray_with_sum_equal_to_number([2,3,1,2,4,3], 7)
