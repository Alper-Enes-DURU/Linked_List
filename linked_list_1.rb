class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end


class Stack
  def initialize
    @data = nil
  end

  def push(value)
    #implement here(@data)
    @data = LinkedListNode.new(value, @data)
  end

  def pop
    #return a value
    if @data.nil?
      nil
    else
      pushed_value = @data.value
      @data = @data.next_node
      pushed_value
    end 
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

def reverse_list(node)
  stack = Stack.new

  while node
    stack.push(node.value)
    node = node.next_node
  end

  current_value = stack.pop
  current_node = LinkedListNode.new(current_value)
  first_node = current_node # save the first node to pass back

  while current_value != nil
    current_value = stack.pop
    if current_value ==  nil
      break
    end
    next_node = LinkedListNode.new(current_value)
    current_node.next_node = next_node # (37,nil).next_node = (99,nil)
    current_node = next_node
  end
  return first_node
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)
puts "--------"
revlist= reverse_list(node3)
print_values(revlist)
