require './lib/linked_list'
require './lib/node'

class HashTable
  attr_reader :table

  def initialize(list)
    @list = list
    @end_array = build_end_array
    @table = build_table
  end

  def build_table
    zip_values_with_hash_keys.each do |pair|
      @end_array[pair[0]].append(pair[1])
    end
    return @end_array
  end

  def print_table
    format_printing.each do |row|
      row
    end
  end

  private

  def format_printing
    rows = @table.map.with_index do |row, index|
      string = "#{index} -> "
      if row.count == 1
        string << " #{row.head.data}"
      elsif row.count > 1
        string << " #{row.head.data}"
        current_node = row.head
        until current_node.next_node == nil
          current_node = current_node.next_node
          string << ", #{current_node.data}"
        end
      end
      string
    end
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
    @table_values = hashed_keys.zip(@list)
  end
end
