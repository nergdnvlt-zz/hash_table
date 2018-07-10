class Node
  attr_accessor :next_node
  attr_reader :value, :key

  def initialize(key, value)
    @key = key
    @value = value
    @next_node = nil
  end
end
