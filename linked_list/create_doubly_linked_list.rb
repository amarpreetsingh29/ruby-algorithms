def create_linked_list(arr_input, index = 0, node_prev = nil)
  if index ==  arr_input.length
    return nil
  end
  node = {
    data: arr_input[index],
  }
  node[:prev] = node_prev
  node[:next] = create_linked_list(arr_input, index+1, node)
  return node
end

a = [3,4,5]
ll =  create_linked_list(a)
puts ll
