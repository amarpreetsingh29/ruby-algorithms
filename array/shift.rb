def shift(arr)
  arr.shift

  arr = [2,3,4]
end

a = [1,2,3]
obj = {
  a: 1,
  next: a
}
shift(a)
puts a


