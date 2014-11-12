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
    distance = 0
    return 0 if node_value_1 == node_value_2
    queue = [@map[node_value_1], {:distance => 0, :passed_cities => passed_cities}]
    while queue.length >0
      node = queue.shift
      obj = queue.shift
      node.edges.each do |k, v|
        # binding.pry
        new_passed_cities = []
        obj[:passed_cities].each do |x|
          new_passed_cities << x
        end
        new_distance = v + obj[:distance]
        if distance != 0 
          next if distance < v || distance < new_distance
        end
        if k == node_value_2
          distance = new_distance
        elsif !new_passed_cities.include?(k)
          new_passed_cities << k
          queue << @map[k]
          queue << {:distance => new_distance, :passed_cities => new_passed_cities}
        end
      end
    end
    return distance if distance != 0
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

  def find_path(node_value_1, node_value_2, cost = 0, passed_cities = [])
    old_passed_cities = obj[:passed_cities] 
    city[:roads].each do |k, v|
      new_passed_cities = []
      old_passed_cities.each do |x|
        new_passed_cities << x
      end
      new_distance = v[:distance] + obj[:distance]
      if k == city2
        distances << new_distance
      elsif !new_passed_cities.include?(k)
        new_passed_cities << k
        queue << {city: @map[k], distance:new_distance, passed_cities: new_passed_cities}
      end
    end
  end
end