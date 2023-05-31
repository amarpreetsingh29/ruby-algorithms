require_relative 'node'

# * Loop over array
#     * Create node for the element
#     * Insert node
#         * If tree is not present
#             * Tree = node, return
#         * If tree present
#             * Iterate over tree to insert node


# Insert node algo
# 1. Initialize a infinite loop ? Do we need a loop?
#     1. No
# 2. Initialize pointer for iteration -> Temp = tree
# 3. Compare  temp.data  with element
#     1. If elm > tree.data
#         1. If temp.right is null
#             1. insert node
#         2. Else Temp = temp.right
#     2. If elm < tree.data
#         1. If temp.left is null
#             1. insert node
#         2. Else Temp = temp.left
#     3. If elm == tree.data

def create_binary_search_tree(data)
  if data && data.instance_of?(Array) && data.length
    tree = nil
    for elm in data do
      if tree.nil?
        tree = BinarySearchTreeNode.new(elm)
      else
        insert_element(tree, elm)
      end
    end
  else
    throw StandardError.new("data should be a array")
  end
  tree
end


def insert_element(tree, elm)
  if elm > tree.data
    if tree.right.nil?
      node = BinarySearchTreeNode.new(elm)
      tree.right = node
      return
    else
      insert_element(tree.right, elm)
    end
  elsif elm < tree.data
    if tree.left.nil?
      node = BinarySearchTreeNode.new(elm)
      tree.left = node
      return
    else
      insert_element(tree.left, elm)
    end
  else
    puts "Skipping #{elm} as bst cannot have duplicate elements"
  end
end


# input = [2,3,5,1,7]
# puts create_binary_search_tree(input)
