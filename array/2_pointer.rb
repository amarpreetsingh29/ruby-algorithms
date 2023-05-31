def pointer_2(arr)
  i=0
  j=arr.length-1
  loop do
    if(i>j)
      break;
    end
    puts arr[i], arr[j]
    i += 1
    j -= 1
  end
end


pointer_2([1,2,3,4])
