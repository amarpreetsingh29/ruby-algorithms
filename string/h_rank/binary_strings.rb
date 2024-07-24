def binary_strings(s)
  return if s == nil

  i = j= 0
  acc = []
  n = s.length

  while(i < s.length)
    if s[i] == '1'
      j = i + 1
      while(j < s.length)
        if s[j] == '1'
          acc << s[i..j]
        end
        j += 1
      end
    else
      i += 1
    end
    i+=1
  end

  return acc
end

print binary_strings('1111')
print binary_strings('00100101')
