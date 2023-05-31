# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  return if strs.empty? || strs.nil?

  sorted_strs = strs.sort
  i=0
  result = ''
  first_str =sorted_strs[0]
  bool = false
  while i < first_str.length
    j=1
    while j < sorted_strs.length
      if(first_str[i] != sorted_strs[j][i])
        bool = true
        break
      end
      j+=1
    end
    if bool
      break
    else
      result += first_str[i]
      i+=1
    end
  end
  return result
end

arr = ["geeksforgeeks", "geeks", "geek", "geezer"];
longest_common_prefix(arr)
