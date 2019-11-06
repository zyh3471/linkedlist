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

def infinite_loop?(list)


    t = list.next_node
    h = list.next_node

  until h.nil?
    h = h.next_node
    return false if h.nil?

    h = h.next_node
    t = t.next_node
    return true if h == t
  end

  return false
end


node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

puts infinite_loop?(node3)
node1.next_node = node3

puts infinite_loop?(node3)