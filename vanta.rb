# @param {String} digits
# @return {String[]}
def letter_combinations(digits)
  return [] if digits.empty?
  hash = {
   '2'=> ['a','b','c'],
   '3'=> ['d', 'e', 'f'],
   '4'=> ['g','h','i'],
   '5'=> ['j','k','l'],
   '6'=> ['m','n','o'],
   '7'=> ['p','q','r' ,'s'],
   '8'=> ['t','u','v'],
   '9'=> ['w','x','y','z']
 }
 i=0
 result = nil
 begin
   if digits[i] == '0' || digits[i] == '1'
     i+=1
     next
   end
   if result.nil?
     result = hash[digits[i]]
   else
     result = combination(result, hash[digits[i]])
   end
   i+=1
 end while i < digits.length
 result
end

def combination(a,b)
 i=0
 j=0
 temp = []
 while i<a.length
  j = 0
  while j<b.length
     temp << a[i] + b[j]
     j+=1
   end
   i+=1
 end
 temp
end

# def combination(a,b)
#   temp = []
#   a.each do |elm|
#     b.each do |elm_2|
#       temp << elm + elm_2
#     end
#   end
#   temp
#  end

p letter_combinations("123")
