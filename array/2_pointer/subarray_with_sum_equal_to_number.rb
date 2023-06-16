# Given an array of n positive integers and a positive integer s,
# find the contiguous subarray of which the sum = s.

def subarray_with_sum_equal_to_number(arr, s)
  i=j=0
  sum = 0
  n = arr.length
  found = false

  while i < n
    if j<n
      sum+=arr[j]
      if sum == s
        found = true
        break
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

  found ? arr.slice(i..j) : 0
end

p subarray_with_sum_equal_to_number([2,3,1,2,4,3], 14)
