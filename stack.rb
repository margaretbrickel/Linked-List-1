require './linked_list_node'

class Stack
    attr_reader :data

    def initialize
        @data = nil
    end

    # Push a value onto the stack
    def push(value)
        if @data
            @data = LinkedListNode.new(value, @data)
        else
            @data = LinkedListNode.new(value)
        end
    end

    # Pop an item off the stack.
    # Remove the last item that was pushed onto the
    # stack and return the value to the user
    def pop
        value = nil
        if @data
            value = @data.value
            @data = @data.next_node
        end

        value
    end
end