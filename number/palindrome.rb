# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  x = x.to_s
  i=0
  j=x.length-1
  bool = true
      while(i<j)
        if(x[i] != x[j])
          bool = false
          break
        end
        i+=1
        j-=1
      end
      return bool
  end

 p is_palindrome(121)
