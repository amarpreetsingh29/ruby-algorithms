def first_repeat_char(s)
  temp = {}
  s.each_char do |char|
    if temp[char] == nil
      temp[char] = 1
    else
      return char
    end
  end
  return '#'
end

print first_repeat_char('tamatr')
