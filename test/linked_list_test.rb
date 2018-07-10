require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

require './lib/linked_list.rb'

class LinkedListTest < Minitest::Test
  def test_it_initializes
    list = LinkedList.new

    assert_instance_of LinkedList, list
    assert_nil list.head
  end

  def test_it_can_append_node
    list = LinkedList.new

    result = list.append('Key1', 'Thrasher')
    assert_instance_of Node, result
  end

  def test_it_can_append_single_node
    list = LinkedList.new

    list.append('Key1', 'Thrasher')
    assert_instance_of LinkedList, list
    assert_instance_of Node, list.head
    assert_equal "Key1", list.head.key
    assert_equal "Thrasher", list.head.value
    assert_nil list.head.next_node
  end

  def test_it_can_append_two_nodes
    list = LinkedList.new

    list.append('Key1', 'Thrasher')
    assert_instance_of LinkedList, list
    assert_instance_of Node, list.head
    assert_equal "Key1", list.head.key
    assert_equal "Thrasher", list.head.value
    assert_nil list.head.next_node

    assert_equal 1, list.count

    list.append('Key2', 'Fluffy')
    assert_instance_of Node, list.head.next_node
    assert_equal "Key2", list.head.next_node.key
    assert_equal "Fluffy", list.head.next_node.value
    assert_nil list.head.next_node.next_node

    assert_equal 2, list.count
  end

  def test_it_can_append_multiple_nodes
    list = LinkedList.new

    list.append('Key1', 'Thrasher')
    assert_instance_of LinkedList, list
    assert_instance_of Node, list.head
    assert_equal "Key1", list.head.key
    assert_equal "Thrasher", list.head.value
    assert_nil list.head.next_node

    assert_equal 1, list.count

    list.append('Key2', 'Fluffy')
    assert_instance_of Node, list.head.next_node
    assert_equal "Key2", list.head.next_node.key
    assert_equal "Fluffy", list.head.next_node.value
    assert_nil list.head.next_node.next_node

    assert_equal 2, list.count

    list.append('Key3', 'papawar')
    assert_instance_of Node, list.head.next_node
    assert_equal "Key3", list.head.next_node.next_node.key
    assert_equal "papawar", list.head.next_node.next_node.value
    assert_nil list.head.next_node.next_node.next_node

    assert_equal 3, list.count
  end
end
