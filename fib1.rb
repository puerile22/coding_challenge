def fib_list(n)
  arr=[1,1]
  return 1 if n==1
  while n>arr[-1]+arr[-2]
    arr << arr[-2]+arr[-1]
  end
  return arr.join(",")
end

def fib(n)
  arr=[1,1]
  return 1 if n==0 || n==1
  (2..n).each do |i|
    arr << arr[i-2]+arr[i-1]
  end 
  return arr[n]
end

def fib(n)
  return 1 if n==0 || n==1
  fib(n-1) + fib(n-2)
end

def fib_list(n)
  
