
def identify_circular_linked_list(head)
  temp =  head
  loop do
    if temp == temp[:next]
  end
end

head = {
  data: 2,
  next: nil
}
last = {
  data: 5,
  next: head
}
list = head
head[:next] = {
  data: 3,
  next: last
}

identify_circular_linked_list(head)
