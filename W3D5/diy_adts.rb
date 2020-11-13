class Stack

    def initialize
        @stack = []   
    end

    def push(el)
        @stack << el
    end

    def pop
        @stack = @stack[0..-2]
    end

    def peek
        return @stack[-1]
    end
end

class Queue

    def initialize
        @queue  = []
    end

    def enque(el)
        @queue.unshift(el)
    end
    
    def dequeue
        @queue.pop
    end

    def peek
        return @queue[-1]
    end
end

class Map

    def initialize
        @map = []  
    end

    def set(key, value)

        (0...@map.length).each do |i|
            if @map[i][0] == key
                @map[i][1] = value
                return
            end
        end

        @map << [key, value]
    end

    def get(key)
        (0...@map.length).each do |i|
            if @map[i][0] == key
                return @map[i][1]
            end
        end
    end
   
    def delete(key)
        (0...@map.length).each do |i|
            if @map[i][0] == key
                @map[i].delete
            end
        end
    end

    def show
     print @map
    end
end