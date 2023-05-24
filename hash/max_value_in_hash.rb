def max_value_in_hash(hash)
  max_value = -1
  max_key = nil
  hash.each do |key, value|
    if value > max_value
      max_value = value
      max_key = key
    end
  end
  {
    max_value: max_value,
    max_key: max_key
  }
end

temp_hash = {
  a: 3,
  b: 2,
  c: 5,
}
a=[]
puts max_value_in_hash(temp_hash)

