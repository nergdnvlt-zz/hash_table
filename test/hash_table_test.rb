require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

require './lib/hash_table.rb'

class HashTest < Minitest::Test
  def setup
    @names = ['Mia', 'Tim', 'Bea', 'Zoe', 'Sue', 'Len', 'Moe', 'Lou', 'Rae', 'Max', 'Tod']
  end

  def test_it_initializes
    hash_table = HashTable.new(['Amy', 'Bob'])

    assert_instance_of HashTable, hash_table
  end

  # def test_it_builds_nil_array
  #   nil_array = HashTable.new(@names).build_nil_array
  #
  #   expected = [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil]
  #   assert_equal(expected, nil_array)
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
  #   hash_output = HashTable.new(@names).hash_inputs
  #
  #   expected = [4, 1, 0, 5, 4, 1, 3, 7, 5, 8, 9]
  #   assert_equal expected, hash_output
  # end


end
