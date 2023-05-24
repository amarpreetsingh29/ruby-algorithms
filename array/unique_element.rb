#Given an array that contains all elements occurring k times,
# but one occurs only once. Find that unique element.
# Input  : arr[] = {6, 2, 5, 2, 2, 6, 6}
# k = 3
# Output : 5

#solution -
# create hash of elements
# find  element with count 1

def find_unique_element(arr, k)
  hash = {}

  arr.each do |elm|
    if hash[elm]
      hash[elm] += 1
    else
      hash[elm] = 1
    end
  end

  hash.key(1)
end


puts find_unique_element([6, 2, 5, 2, 2, 6, 6], 3)
