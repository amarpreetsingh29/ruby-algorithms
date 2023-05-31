def right_root_left_traversal(tree)
  if(tree[:right])
    right_root_left_traversal(tree[:right])
  end
  puts tree[:data]
  if(tree[:left])
    right_root_left_traversal(tree[:left])
  end
end

tree = {
  data: 5,
  left: {
    data: 4,
    left: nil,
    right: nil
  },
  right: {
    data: 3,
    left: nil,
    right: nil
  }
}

right_root_left_traversal(tree)
