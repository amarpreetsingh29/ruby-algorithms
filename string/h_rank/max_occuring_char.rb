def max_occuring_char(s)
  max_count = 1
  max_char = nil
  temp = {}
  s.each_char do |char|
    if temp[char] == nil
      temp[char] = 1
    else
      temp[char] += 1
      # this keeps track of max element, in case of count repition, it's the first char that is the max
      if temp[char] > max_count
        max_count = temp[char]
        max_char = char
      end
    end
  end
  print max_char
end

input= 'testsample'
max_occuring_char(input)
