class Stack

    def initialize
        @stack = []
    end

    def push(el)
        @stack << el

    end


    def pop
        @stack[-1]
        @stack = @stack[0...-1]
    end

    def peek
        @stack[-1]
    end

    def inspect
        "#Stack = #{self.object_id}"
    end


end