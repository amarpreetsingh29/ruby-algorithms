
def identify_circular_linked_list(head)
  result = false

  return result if head.nil?

  temp =  head[:next]
  while !temp.nil?
    if(temp == head)
      result = true
      break
    end
    temp = temp[:next]
  end

  return result
end

head = {
  data: 2,
  next: nil
}
last = {
  data: 5,
  next: nil
}
head[:next] = {
  data: 3,
  next: last
}

puts identify_circular_linked_list(head)
