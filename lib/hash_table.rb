require './lib/linked_list'
require './lib/node'

class HashTable
  attr_reader :table

  def initialize(list)
    @list = list
    @end_array = build_end_array
    @table = build_table
  end

  def put(key, value)
    @end_array[hash_input(key)].append(key, value)
  end

  def get(key)
    current_node = @end_array[hash_input(key)].head
    until current_node.key == key
      current_node = current_node.next_node
    end
    return current_node.value
  end

  def print_table
    format_printing.each do |row|
      row
    end
  end

  private

  def build_table
    zip_values_with_hash_keys.each do |pair|
      @end_array[pair[0]].append(pair[1][0], pair[1][1])
    end
    return @end_array
  end

  def format_printing
    rows = @table.map.with_index do |row, index|
      string = "#{index} -> "
      if row.count == 1
        string << "#{row.head.key}: #{row.head.value}"
      elsif row.count > 1
        string << "#{row.head.key}: #{row.head.value}"
        current_node = row.head
        until current_node.next_node == nil
          current_node = current_node.next_node
          string << ", #{current_node.key}: #{current_node.value}"
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
    @list.map do |pair|
      pair[0].chars.map do |letter|
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

  def hash_input(key)
    ord_key(key) % @list.length
  end

  def ord_key(key)
    key.chars.map do |letter|
      letter.ord
    end.sum
  end
end
