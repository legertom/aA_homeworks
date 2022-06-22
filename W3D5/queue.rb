class Queue

    def initialize
        @queue = []

    end

    def enqueue(el)
        @queue << el 
    end

    def dequeue
        @queue = @queue[1..-1]
        #@queue.shift
    end

    def peek
        @queue[0]
    end

    def show
        @queue.dup
    end

end