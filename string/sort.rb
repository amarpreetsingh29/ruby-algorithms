strings = %w(foo test blog a)

temp = strings.sort do |a,b|
  a.length - b.length
end

puts temp
