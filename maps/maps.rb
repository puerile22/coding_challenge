class Map
  attr_accessor :map
  def initialize
    @map = {}
  end

  def city(name, distance = 0)
    return {:name => name, :roads => {}, :distance => distance }
  end

  def add_city(name)
    @map[name] = city(name)
  end

  def add_road(city1, city2, distance)
    queue = []
    @map.each do |k, v|
      queue << {k => v}
    end
    while queue.length > 0
      city = queue.shift
      if city[city1]
        parent_city = city[city1]
        parent_city[:roads][city2] = city(city2, distance)
      elsif city[city2]
        parent_city = city[city2]
        parent_city[:roads][city1] = city(city1, distance)
      end
    end
  end

  def find_path(city1, city2)
    result = find_path_helper(city1, city2)
    return 0 if result == 0
    return nil if result.empty?
    return result.sort.first
  end

  def find_path_helper(city1, city2, distance = 0, passed_cities = [])
    passed_cities << city1
    distances = []
    queue = [{city: @map[city1], distance:distance, passed_cities: passed_cities}]
    return 0 if city1 == city2
    while queue.length > 0
      obj = queue.shift
      city = obj[:city]
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
    return distances
  end
end