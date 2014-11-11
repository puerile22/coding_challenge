def encode(str,num)
  ans=""
  str.split('').each do |letter|
    ans<< ((letter.ord-num) % 128).chr
  end
  return ans
end
def decode(str,num)
  ans=''
  str.split('').each do |letter|
    ans<<(letter.ord+num % 128).chr
  end
  return ans
end
str='abcdefghijklmnopqrstuvyxyz'
p encode(str,-22)