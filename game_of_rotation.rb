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