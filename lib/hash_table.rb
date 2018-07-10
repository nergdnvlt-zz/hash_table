class HashTable
  def initialize(list)
    @list = list
    @end_array = build_nil_array
    @list_keys = hash_inputs
  end

  def build_hash_table
    # build nodes for each nil value in end_array
    # if node has nil value - append node
    # if key has node already append to that node
  end

  private

  def build_nil_array
    end_array = []
    @list.length.times do
      end_array << nil
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

  def hash_inputs
    ord_values.map do |num|
      num % @list.length
    end
  end
end












# names = [Mia, Tim, Bea, Zoe, Sue, Len, Moe, Lou, Rae, Max, Tod]
# ord = [279, 298, 264, 302, 301, 287, 289, 304, 280, 294, 295]
# keys = [4, 1, 0, 5, 4, 1, 3, 7, 5, 8, 9]
