def largest_sub(arr)
  ans=[]
  largest = 0
  (0...arr.length).each do |i|
    sum = 0
    (i...arr.length).each do |j|
      sum += arr[j]
      if sum > largest 
        largest = sum
        ans = arr[i..j]
      end
    end
  end
  return ans
end

def sub(arr)
  max_sub = nil
  current_sub = 0
  arr.each do |num|
    current_sub += num
    if max_sub.nil? || current_sub > max_sub
      max_sub = current_sub
    elsif current_sub < 0
      current_sub = 0
    end
  end
  return max_sub
end
