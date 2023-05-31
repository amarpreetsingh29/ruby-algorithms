require_relative('create_linked_list')

def reverse_linked_list(list)
  current = list
  preserved_previous = nil

  while current
    break unless current

    preserved_next = current.next
    current.next = preserved_previous
    preserved_previous = current

    current = preserved_next
  end
  return preserved_previous
end

list = create_linked_list([1,2,3,4])[:node]
list = reverse_linked_list(list)
puts list

