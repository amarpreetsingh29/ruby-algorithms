def missing_number(arr)
  return if arr.nil?

  sorted_arr = arr.sort

  i = 0
  n = sorted_arr.length - 1
  result = nil


  while i < n
    if sorted_arr[i+1] - sorted_arr[i] > 1
      result = sorted_arr[i] + 1
      break
    end

    i += 1
  end

  return result
end

def missing_number_using_hash(arr)
  return if arr.nil?

  n = arr.length
  expected_hash ={}
  given_hash = {}
  result = nil

  (1..n).each do |idx|
    expected_hash[idx] = 0
  end

  arr.each do |elm|
    given_hash[elm] = 0
  end

  expected_hash.each_key do |key|
    if given_hash[key].nil?
      result = key
      break
    end
  end

  return result
end

#p missing_number([1,2,3,5])
p missing_number_using_hash([6,1,2,8,3,4,7,10,5])
