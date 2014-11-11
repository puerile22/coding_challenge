class Graph
  attr_accessor :map
  def initialize
    @map = {}
  end
  def addNode(value)
    @map[value] = Node.new(value)
  end

  def removeNode(value)
    @map.each do |k, v|
      v.removeEdge(@map[value])
    end
    @map.delete(value)
  end

  def addEdge(node_value_1, node_value_2, cost)
    @map[node_value_1].addEdge(@map[node_value_2], cost)
    @map[node_value_2].addEdge(@map[node_value_1], cost)
  end

  def removeEdge(node_value_1, node_value_2)
    @map[node_value_1].removeEdge(@map[node_value_2])
    @map[node_value_2].removeEdge(@map[node_value_1])
  end

  def find_path(node_value_1, node_value_2)
    return 0 if node_value_1 == node_value_2
    
  end
end

class Node
  attr_accessor :edges, :value
  def initialize(value)
    @value = value
    @edges = {}
  end

  def addEdge(node, cost)
    @edges[node.value] = cost
  end

  def removeEdge(node)
    @edges.delete(node.value)
  end
end