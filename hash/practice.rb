temp = {
  fname: "amarpreet",
  lname: "singh",
  address: {
    street: "abcd",
    unit: "xyz",
  }
}
a = temp

#add
temp[:nationality] = "unknown"

if temp[:nationality]
  puts "present"
end

#delete
#temp.delete(:address)

#dig
# temp.dig(:address,:street)

# #iterate
# temp.each { |key, value|
#   puts "#{key} : #{value}"
# }

# temp.each do |key, value|
#   puts "#{key} : #{value}"
# end

# puts "key"
# temp.each_key do |key|
#   puts "#{key}"
# end

# puts "values"
# temp.each_value do |value|
#   puts "#{value}"
# end

puts temp.keys

