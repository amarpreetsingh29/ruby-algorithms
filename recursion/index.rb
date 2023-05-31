require 'linked_list/node'


def iterate_linked_list(list_node)
  if list_node.nil?
    return
  end

  puts list_node.data
  iterate_linked_list(list_node.next)
end


def iterate_tree(tree_node)
  if tree_node.nil?
    return
  end

  puts tree_node.data

  iterate_tree(tree_node.left)
  iterate_tre(tree_node.right)
end


def find_item_in_linked_list(list_node, item)
  if list_node.nil?
    return false
  end

  if item == list_node.data
    return true
  end

  return find_item_in_linked_list(list_node, elm)
end

def find_item_in_binary_tree(tree_node, item)
  if tree_node.nil?
    return false
  end

  if item == tree_node.data
    return true
  end

  result = find_item_in_binary_tree(tree_node.left, item)

  if result
    return true
  end

  return find_item_in_binary_tree(tree_node.right, item)
end

def find_item_in_binary_search_tree(tree_node, item)
  if tree_node.nil?
    return false
  end

  if tree_node.data == item
    return true
  end

  if item < tree_node.data
    return find_item_in_binary_search_tree(tree_node.left, item)
  elsif item > tree_node.data
    return find_item_in_binary_search_tree(tree_node.right, item)
  end
end

def create_linked_list(items, index=0)
  if items.length - 1 == index
    node = {
      data: items[index],
      next: nil
    }
  end

  node = LinkedListNode.new(data: items[index])
  node.next = create_linked_list(items, index+1)

  return node
end
