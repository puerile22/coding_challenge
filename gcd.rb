def gcd(*nums)
  arr=[]
  arr=nums
  min = 0
  min = arr.min
  arr2=[]
  (1..min/2).each do |i|
    arr2 << i if min%i == 0
  end
  arr2 << min 
  arr2.reverse!
  arr2.each do |i|
    arr.each do |j|
      arr2.delete(i) if j%i !=0
    end
  end
  return arr2[0]
end

def gcd(arr)
  arr.sort!
  return arr[-1] if arr[-2]==0
  arr[-1],arr[-2] = arr[-2], arr[-1]%arr[-2]
  gcd(arr)
end