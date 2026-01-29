class LinkedList
  
end

class Node
  attr_accessor :value, :next_node
  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end

end

one =Node.new(15, nil)
puts one.inspect
puts one.value
p one.next_node
puts one = Node.new(5, nil)
puts one.inspect
puts one.inspect