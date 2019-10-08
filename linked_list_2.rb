class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
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

def reverse_list(current_node, previous_node = nil)
  # do stuff
  # [1] --> [2] --> [3] --> nil   to   [3] --> [2] --> [1] --> nil
  # [1] --> nil || current_node = 1 , next_node = 2, previous_node = nil
  # [2] --> 1   || current_node = 2 , next_node = 3, previous_node = 1 
  # [3] --> 2   || current_node = 3 , next_node = 1, previous_node = 2
  next_node = current_node.next_node
  while next_node
    next_node = current_node.next_node      #     next_node(nil) <- current_node.next_node(2)      || previous_node= 1
    current_node.next_node = previous_node  #     current_node.next_node(2) <- previous_node(nil)  || next_node = nil
    previous_node = current_node            #     previous_node(nil) <- current_node(1)            || current_node = 
    current_node = next_node                #     current_node(1) <- next_node(2)                  
  end
  previous_node
end      


node1 = LinkedListNode.new(1)
node2 = LinkedListNode.new(2, node1)
node3 = LinkedListNode.new(3, node2)

print_values(node3)
puts "--------"
revlist= reverse_list(node3)
print_values(revlist)
