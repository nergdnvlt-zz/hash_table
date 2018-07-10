require './lib/linked_list'

class HashTable
  attr_reader :table

  def initialize(list)
    @list = list
    @end_array = build_end_array
    @table = table
  end

  def table    
    # if node has nil value - append node
    # if key has node already append to that node
  end

  def build_end_array
    end_array = []
    @list.length.times do
      end_array << LinkedList.new
    end
    end_array
  end

  def ord_values
    @list.map do |name|
      name.chars.map do |letter|
        letter.ord
      end.sum
    end
  end

  def hashed_keys
    ord_values.map do |num|
      num % @list.length
    end
  end

  def zip_values_with_hash_keys
    hashed_keys.zip(@list)
  end
end












# names = [Mia, Tim, Bea, Zoe, Sue, Len, Moe, Lou, Rae, Max, Tod]
# ord = [279, 298, 264, 302, 301, 287, 289, 304, 280, 294, 295]
# keys = [4, 1, 0, 5, 4, 1, 3, 7, 5, 8, 9]
