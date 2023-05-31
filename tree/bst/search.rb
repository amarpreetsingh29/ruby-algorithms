require_relative 'create'

def search(tree, elm)
  if tree.nil?
    return false
  end

  if elm < tree.data
    return search(tree.left, elm)
  elsif elm > tree.data
    return search(tree.right, elm)
  elsif elm == tree.data
    return true
  end
end


def search_normal_tree(tree, elm)
  if tree.nil?
    return false
  end
  if elm == tree.data
    return true
  end
  result = search_normal_tree(tree.left, elm)
  if result
    return true
  end
  return search_normal_tree(tree.right, elm)
end

input = [2,6,4,5,1,7]
tree =  create_binary_search_tree(input)
elm = 0
puts search_normal_tree(tree, 4)
