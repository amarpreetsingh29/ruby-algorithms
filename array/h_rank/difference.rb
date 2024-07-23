# diff -> remove elments in b from a
# how? reject elements in a , if they are in b
def difference(a,b)
  t = a.reject do |elm|
    b.include?(elm)
  end
  print t
end


# optimized - converted to set for O(1) check
def difference_v2(a,b)
  set_b = b.to_set
  t = a.reject do |elm|
    set_b.include?(elm)
  end
  print t
end

difference_v2([5,6,7], [5])
