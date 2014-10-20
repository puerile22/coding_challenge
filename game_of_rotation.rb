def rotation(arr)
  max = 0
  (arr.length-1).times do
    sum = 0
    arr.push(arr.shift)
    (0...arr.length).each do |j|
      sum += arr[j]*(j+1)
    end
    if sum > max
      max = sum 
    end
  end
  return max
end

def new_rotation(arr)
  sum = 0
  max = 0
  (0...arr.length).each do |i|
    max += arr[i]*(i+1)
    sum += arr[i]
  end
  ans = max
  (0...arr.length).each do |i|
    arr.push(arr.shift)
    sub_sum = arr.length*arr[-1]-sum
    max += sub_sum
    ans = max if max > ans
  end
  return ans
end
