# diff -> remove elments in b from a
# how? reject elements in a , if they are in b
def difference(a,b)
  t = a.reject do |elm|
    b.include?(elm)
  end
  print t
end

difference([5,6,7], [])
