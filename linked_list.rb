class LinkedList
  attr_accessor :head, :tail
  def initialize
    @head = nil
  end

  # adds a new node containing value to the end of the list.
  def append(value)
    if @head == nil
      prepend(value)
    else
      tmp = @head
      while tmp.next_node != nil
        tmp = tmp.next
      end
      tmp.next_node = Node.new(value, nil)
    end
  end

  # adds a new node containing value to the start of the list.
  def prepend(value)
    @head = Node.new(value, @head)
  end

  def traverse
    tmp = @head
    # keeps looping next_node till it hits nil.
    while tmp.next_node != nil
      tmp = tmp.next_node
    end
    tmp
  end

  # returns the total number of nodes in the list.
  def size
    tmp = @head
    if @head == nil
    counter = 0
    else
      counter = 1
      while tmp.next_node != nil
        counter += 1
        tmp = tmp.next_node
      end
    end
    counter
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
# p list.append(22)
# p list.head
p list.append(45)
p list.append(35)
p list.prepend(7)
p list.prepend(9)
# p list.head == nil
# p list.head.value
# p list.head.next_node
# p list
# p list.head
# p list.head.next_node
# p list.next_node
# p list.traverse
p list.size