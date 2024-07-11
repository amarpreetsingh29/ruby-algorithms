def reverse(str)
  puts str.reverse
end

def reverse_v3(str)
  i = str.length-1
  while(i>=0) do
    print str[i]
    i=i-1
  end
end

reverse_v3('amar')
