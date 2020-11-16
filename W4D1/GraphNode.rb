require "byebug"
class GraphNode

    attr_reader :value, :neighbors

    def initialize(value)
        @value = value
        @neighbors = nil
    end

    def neighbors=(neighbors)
        @neighbors = neighbors
    end 

    def value
        @value
    end

    def bfs(node, target)

        queue = []
        queue << node
        checked = Set[node]
        # debugger  
        until queue.empty?
         
            if queue.first.value == target
                # debugger
                return node
            end

            if queue.first.neighbors != nil
                queue.first.neighbors.each do |n|
                    if !checked.include?(n)
                        queue << n 
                    end
                end
            end

            checked << queue.shift
            
        end
        return nil
    end

end


a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]


