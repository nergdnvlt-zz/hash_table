require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

require './lib/node.rb'

class NodeTest < Minitest::Test
  def test_it_initializes
    node = Node.new('Fluffy')

    assert_instance_of Node, node
    assert_equal "Fluffy", node.data
  end

  def test_next_node_is_nil
    node = Node.new('Thor')

    assert_nil node.next_node
  end
end
