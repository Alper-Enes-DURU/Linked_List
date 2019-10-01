
class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end

  def self.print_values(list_node)
    if list_node
      print "#{list_node.value} --> "
      print_values(list_node.next_node)
    else
      print "nil\n"
      return
    end
  end
end


node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

LinkedListNode.print_values(node3)

class Stack
  attr_reader :data

  def initialize
    @data = nil
  end

  def push(value)
    #implement here
  end

  def pop
    #return a value
  end
end

def reverse_list(list)
  #some code
  while list
    #add code
    list = list.next_node
  end
  #add code
end