def left_root_right_traversal(tree)
  if(tree[:left])
    left_root_right_traversal(tree[:left])
  end
  puts tree[:data]
  if(tree[:right])
    left_root_right_traversal(tree[:right])
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

left_root_right_traversal(tree)
