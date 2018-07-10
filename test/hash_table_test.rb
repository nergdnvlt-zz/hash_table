require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

require './lib/hash_table.rb'

class HashTest < Minitest::Test
  def setup
    @names = ['Mia', 'Tim', 'Bea', 'Zoe', 'Sue', 'Len', 'Moe', 'Lou', 'Rae', 'Max', 'Tod']
  end

  def test_table
    hash_table = HashTable.new(@names).table
    assert_equal 11, hash_table.size
    hash_table.each do |linked_list|
      assert_instance_of LinkedList, linked_list
    end
    assert_equal 'Bea', hash_table[0].head.data
  end

  def test_print_table
    printed = HashTable.new(@names).print_table
    # binding.pry
    # To test:
    # in the command line run:
    puts printed
  end

  ####### OLD PRIVATE METHOD TESTS

  # def test_it_initializes
  #   hash_table = HashTable.new(['Amy', 'Bob'])
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
  #   expected = [279, 298, 264, 302, 301, 287, 289, 304, 280, 294, 295]
  #   assert_equal expected, ord_values
  # end
  #
  # def test_it_gives_keys
  #   hash_output = HashTable.new(@names).hashed_keys
  #
  #   expected = [4, 1, 0, 5, 4, 1, 3, 7, 5, 8, 9]
  #   assert_equal expected, hash_output
  # end
  #
  # def test_combines_hashed_keys_with_values
  #   pairs = HashTable.new(@names).zip_values_with_hash_keys
  #   expected = [[4, 'Mia'], [1, 'Tim'], [0, 'Bea'], [5, 'Zoe'], [4, 'Sue'], [1, 'Len'], [3, 'Moe'], [7, 'Lou'], [5, 'Rae'], [8, 'Max'], [9, 'Tod']]
  #   assert_equal expected, pairs
  # end

end
