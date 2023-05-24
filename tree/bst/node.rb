class BinarySearchTreeNode
  attr_accessor :data, :left, :right
  def initialize(data, left = nil, right = nil)
    @data = data
    @left = nil
    @right = nil
  end
end
