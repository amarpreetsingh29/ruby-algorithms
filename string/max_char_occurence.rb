def max_char_occurence(str)
  hash = {}
  max_char=nil
  str.each_char do
    if hash[char]
      hash[char] +=1
    else
      hash[char] = 1
    end
    if hash[char] > max_char

    end
  end
end
