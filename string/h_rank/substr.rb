def substr(s,x)
  s.each_char.with_index do |char_i, i|
    result = i
    temp = i
    x.each_char.with_index do |char_j, j|
      if s[temp] == x[j]
        if j == x.length - 1
          return result
        else
          temp+=1
        end
      else
        break
      end
    end
  end
  -1
end

def substr_v2(s,x)
  s.each_char.with_index do |char_i, i|
    result = i
    x.each_char.with_index do |char_j, j|
      if s[i] == x[j]
        if j == x.length - 1
          return result
        else
          i+=1
        end
      else
        break
      end
    end
  end
  -1
end

puts substr_v2('geeksforgeeks', 'gees')
