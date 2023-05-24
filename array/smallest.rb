
def find_smallest(input)
  smallest = input[0]
  for elm in input do
    if elm < smallest
      smallest =  elm
    end
  end
  smallest
end

a= [3,4,1,8]
puts a.min
puts find_smallest([3,4,1,8])
