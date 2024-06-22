def reverse(str)
  puts str.reverse
end

def reverse_v3(str)
  temp =''
  i = str.length-1
  while(i>=0) do
    temp+=str[i]
    i=i-1
  end
  puts temp
end

reverse_v3('amar')
