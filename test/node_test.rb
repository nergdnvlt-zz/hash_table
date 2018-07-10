require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

require './lib/node.rb'

class NodeTest < Minitest::Test
  def test_it_initializes
    node = Node.new('Key1', 'Fluffy')

    assert_instance_of Node, node
    assert_equal "Key1", node.key
    assert_equal "Fluffy", node.value
  end

  def test_next_node_is_nil
    node = Node.new('Key2', 'Thor')

    assert_nil node.next_node
  end
end
