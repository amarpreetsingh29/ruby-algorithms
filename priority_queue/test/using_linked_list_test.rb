require "minitest/autorun"
require_relative '../using_linked_list'

class HelloTest < Minitest::Test
  def setup
    @pq = DS::PriorityQueue.new
  end

  def test_head_is_nil
    assert_nil @pq.head
  end
end
