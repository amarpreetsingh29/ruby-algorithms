def two_pointer_iteration_1(arr)
  i = j =0
  while  i < arr.length
    if j < arr.length
      print arr[j]
      j+=1
    else
      i+=1
      j=i
      print "\n"
    end
  end
end

def two_pointer_iteration_2(arr)
  i = j =0
  while  i < arr.length
    if j < arr.length
      print arr[j]
      j+=1
    else
      i+=1
      j=0
      print "\n"
    end
  end
end

two_pointer_iteration_1([1,2,3,4,5,6])
