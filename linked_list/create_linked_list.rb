require_relative 'node'
def create_linked_list(arr_input, index = 0)
  last_node = nil
  if index ==  arr_input.length
    return {
      node: nil,
      last_node: last_node
    }
  end
  node = LinkedListNode.new(arr_input[index])
  result = create_linked_list(arr_input, index+1)
  node.next = result[:node]
  last_node =  result[:last_node].nil? ? node : result[:last_node]
  return {
    node: node,
    last_node: last_node
  }
end

# a = [3,4,5]
# ll =  create_linked_list(a)
# puts ll
