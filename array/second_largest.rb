def second_largest(input)
  first_largest = find_largest(input)
  second_largest =find_largest(input.select { |elm| elm!=first_largest})
  second_largest
end

def find_largest(input)
  largest = input[0]

  for elm in input do
    if elm > largest
      largest = elm
    end
  end
  largest
end

puts second_largest([3,4,5,7,1])


