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

  # def find_path(node_value_1, node_value_2)
  #   passed_cities = [node_value_1]
  #   distance = 0
  #   return 0 if node_value_1 == node_value_2
  #   queue = [@map[node_value_1], {:distance => 0, :passed_cities => passed_cities}]
  #   while queue.length >0
  #     node = queue.shift
  #     obj = queue.shift
  #     node.edges.each do |k, v|
  #       # binding.pry
  #       new_passed_cities = []
  #       obj[:passed_cities].each do |x|
  #         new_passed_cities << x
  #       end
  #       new_distance = v + obj[:distance]
  #       if distance != 0 
  #         next if distance < v || distance < new_distance
  #       end
  #       if k == node_value_2
  #         distance = new_distance
  #       elsif !new_passed_cities.include?(k)
  #         new_passed_cities << k
  #         queue << @map[k]
  #         queue << {:distance => new_distance, :passed_cities => new_passed_cities}
  #       end
  #     end
  #   end
  #   return distance if distance != 0
  #   return nil
  # end

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