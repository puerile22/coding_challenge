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
    passed_cities = [node_value_1]
    paths = {node_value_1 => 0}
    best_paths = {}
    distance = 0
    return distance if node_value_1 == node_value_2
    queue = [@map[node_value_1]]
    while queue.length > 0
      city = queue.shift
      city.edges.each do |k ,v|
        new_distance = paths[city.value] + v
        if paths[k].nil? || paths[k] > new_distance
          paths[k] = new_distance
          if !best_paths[k].nil? && paths[k] < best_paths[k]
            best_paths[k] = paths[k]
            queue.unshift(@map[k])
          end
        end
        if !passed_cities.include?(k)
          queue << @map[k]
          passed_cities << k
        end
        if (city.edges.keys - passed_cities).empty?
          best_paths[city.value] = paths[city.value]
        end
        if !best_paths[node_value_2].nil?
          return best_paths[node_value_2]
        end
      end
    end
    return nil
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