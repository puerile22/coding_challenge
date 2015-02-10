require 'pry-byebug'
def max_sub_array(arr)
  max = -1.0/0
  current_max = {
    sum: -1.0/0,
    start_index: 0,
    end_index: 0
  }
  (0...arr.length).each do |i|
    if current_max[:sum] < 0 && arr[i] > 0
      current_max[:sum] = arr[i]
      current_max[:start_index] = i
      current_max[:end_index] = i
    else
      current_max[:sum] += arr[i]
      current_max[:end_index] = i
    end
    if current_max[:sum] > max
      max = current_max[:sum]
    end
  end
  return max
end
puts max_sub_array([-1,-2,3,4,-5,4])