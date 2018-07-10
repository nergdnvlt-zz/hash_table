require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

require './lib/hash_table.rb'

class HashTest < Minitest::Test
  def setup
    @names = [['Key1', 'Mia'],
              ['Key2', 'Tim'],
              ['Key3', 'Bea'],
              ['Key4', 'Zoe'],
              ['Key5', 'Sue'],
              ['Key6', 'Len'],
              ['Key7', 'Moe'],
              ['Key8', 'Lou'],
              ['Key9', 'Rae'],
              ['Key10', 'Max']]
  end

  def test_table
    hash_table = HashTable.new(@names).table
    assert_equal 10, hash_table.size
    hash_table.each do |linked_list|
      assert_instance_of LinkedList, linked_list
    end
    assert_equal 'Sue', hash_table[0].head.value
  end

  def test_print_table
    printed = HashTable.new(@names).print_table
    # binding.pry
    # To test:
    # in the command line run:
    puts printed
  end

  def test_append_table
    another = HashTable.new(@names).put('Key', "Thrasher")

    assert_instance_of Node, another
    assert_equal 'Key', another.key
    assert_equal 'Thrasher', another.value
  end

  def test_get_value
    result = HashTable.new(@names).get('Key10')

    assert_equal 'Max', result
  end

  ####### OLD PRIVATE METHOD TESTS

  # def test_it_initializes
  #   hash_table = HashTable.new([['Key1', 'Amy'], ['Key2' 'Bob']])
  #
  #   assert_instance_of HashTable, hash_table
  # end
  #
  # def test_it_builds_nil_array
  #   ll_array = HashTable.new(@names).build_end_array
  #
  #   ll_array.each do |linked_list|
  #     assert_instance_of LinkedList, linked_list
  #   end
  # end
  #
  # def test_it_gives_ordinal_values
  #   ord_values = HashTable.new(@names).ord_values
  #
  #   expected = [346, 347, 348, 349, 350, 351, 352, 353, 354, 394]
  #   assert_equal expected, ord_values
  # end
  #
  # def test_it_gives_keys
  #   hash_output = HashTable.new(@names).hashed_keys
  #
  #   expected = [6, 7, 8, 9, 0, 1, 2, 3, 4, 4]
  #   assert_equal expected, hash_output
  # end
  #
  # def test_combines_hashed_keys_with_values
  #   pairs = HashTable.new(@names).zip_values_with_hash_keys
  #   expected = [[6, ["Key1", "Mia"]],
  #               [7, ["Key2", "Tim"]],
  #               [8, ["Key3", "Bea"]],
  #               [9, ["Key4", "Zoe"]],
  #               [0, ["Key5", "Sue"]],
  #               [1, ["Key6", "Len"]],
  #               [2, ["Key7", "Moe"]],
  #               [3, ["Key8", "Lou"]],
  #               [4, ["Key9", "Rae"]],
  #               [4, ["Key10", "Max"]]]
  #   assert_equal expected, pairs
  # end
end
