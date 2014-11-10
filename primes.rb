def prime_check(num)
  (2..Math.sqrt(num)).each do |i|
    return false if num%i==0
  end
  return true
end

def primes(num)
  arr=[]
  i=2
  while i<=num
    arr << i if prime_check(i)
    i+=1
  end
  return arr.join(',')
end

def prime(num)
  