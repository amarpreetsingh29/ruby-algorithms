require_relative 'bst/create'

def iterate_2_trees(tree)
  perform(tree.left, tree.right)
end

# same level of depth trees/trees with same structure
def perform(a, b)
  if(a.left && b.left)
    perform(a.left, b.left)
  end
  if(a.right && b.right)
    perform(a.right, b.right)
  end
  puts a.data, b.data
end

# same level of depth trees/ trees with different structure
def perform_2(a, b)
  if(a&.left || b&.left)
    perform_2(a.left, b.left)
  end
  if(a&.right || b&.right)
    perform_2(a.right, b.right)
  end
  puts a&.data, b&.data
end

def compare_2_trees(a, b)
  if a && b
    if(a.data != b.data)
      return false
    end
    result = compare_2_trees(a.left, b.right)
    return result if !result
    compare_2_trees(a.right, b.left)
  end
  return true
end

data =[8,3,5,1,11]
tree = create_binary_search_tree(data)
compare_2_trees(tree.left, tree.right)
