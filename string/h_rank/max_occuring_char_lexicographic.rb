def max_occuring_char_lexicographic(s)
  max_count = 1
  max_char = nil
  temp = {}
  s.each_char do |char|
    if temp[char] == nil
      temp[char] = 1
    else
      temp[char] += 1
      if temp[char] > max_count
        max_count = temp[char]
        max_char = char
      elsif temp[char] == max_count
        if char < max_char
          max_count = temp[char]
          max_char = char
        end
      end
    end
  end
  print max_char
end

input= 'aabbcc'
max_occuring_char(input)
