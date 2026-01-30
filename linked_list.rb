class LinkedList
  attr_accessor :head, :tail
  def initialize
    @head = Node.new(nil)
    # @head1 = Node.new(nil)
    # @head2 = Node.new(nil)
    # @tail = Node.new("reached tail", nil)
  end
  #  adds a new node containing value to the end of the list.
  def append(value)
    if @head == nil
      @head = Node.new(value, nil)
    else
      traverse = Node.new(value, nil)
    end
  end

  def create(val, pointer)
    Node.new(val, pointer)
  end

  def traverse
    tmp = @head
    # keeps looping next_node till it hits nil.
    while tmp.next_node != nil
      tmp = tmp.next_node
    end
  end

end

class Node
  attr_accessor :value, :next_node
  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end

end

list = LinkedList.new
p list
p list.append(22)
# p list.head.value
# p list.head.next_node
p list.append(45)
# p list.head.value
# p list.head.next_node
p list
# p list.traverse