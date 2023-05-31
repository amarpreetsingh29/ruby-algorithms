def post_order_traversal(tree)
  if(tree[:left])
    post_order_traversal(tree[:left])
  end
  if(tree[:right])
    post_order_traversal(tree[:right])
  end
  puts tree[:data]
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

post_order_traversal(tree)
