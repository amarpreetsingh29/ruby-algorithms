a = [1,2,3,4,[2,3 ,[12,4]],3]
a.flatten


def flatten_array(arr, result = [])
  arr.each do |elm|
    if elm.kind_of?(Array)
      flatten_array(elm, result)
    else
      result.push(elm)
    end
  end
  result
end

result =  flatten_array(a)
puts result.to_s
