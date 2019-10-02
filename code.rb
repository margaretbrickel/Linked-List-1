require './linked_list_node'
require './stack'

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

def reverse_list(list)
    stack = Stack.new()
    while list
        stack.push(list.value)
        list = list.next_node
    end

    reversed_stack = Stack.new()
    value = stack.pop()
    while value
      reversed_stack.push(value)
      value = stack.pop()
    end

    value = reversed_stack.pop()
    while value
      list = LinkedListNode.new(value, list)
      value = reversed_stack.pop()
    end

    list
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)

puts "-------"

revlist = reverse_list(node3)

print_values(revlist)