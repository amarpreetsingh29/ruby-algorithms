
def check_symmetric(tree)
  if tree.nil? || tree[:left].nil? || tree[:right].nil?
    return false
  end

  if tree[:left].nil? && tree[:right].nil?
    return true
  end

  a1 = left_root_right_traversal(tree)
  a2 = right_root_left_traversal(tree)
  a1 == a2 ? true : false
end

def left_root_right_traversal(tree, arr=[])
  if(tree[:left])
    left_root_right_traversal(tree[:left], arr)
  end
  arr << tree[:data]
  if(tree[:right])
    left_root_right_traversal(tree[:right], arr)
  end
  arr
end

def right_root_left_traversal(tree, arr=[])
  if(tree[:right])
    right_root_left_traversal(tree[:right], arr)
  end
  arr << tree[:data]
  if(tree[:left])
    right_root_left_traversal(tree[:left], arr)
  end
  arr
end



tree = {
  data: 1,
  left: {
    data: 2,
    left: {
      data: 3,
      left: nil,
      right: nil
    },
    right: nil
  },
  right: {
    data: 2,
    left: {
      data: 3,
      left: nil,
      right: nil
    },
    right: nil
  }
}

puts check_symmetric(tree)
