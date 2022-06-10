class Stack

    def initialize
        @stack_ivar = []
    end

    def push(el)
        @stack_ivar << el

    end

    def pop
        @stack_ivar = @stack_ivar[0...-1]
    end

    def peek
        @stack_ivar[-1]
    end



end