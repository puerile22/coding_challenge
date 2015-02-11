require 'digest'
string = "fd4405b43df1bdbaaf165ff0c63557776cbb89a4f420bfcbc4dc553c57405e5a80f8eabff005045b75877bbc3d2ce98b6dfa07da517d0e6b11a54fa90b3d32cdc99616ac89cfdab24774209ccf2c4e85e069e46dcb0ba46c7f104314371432f23ddcc03f7446d55fa3a158452eb644dc000825d73c642556719a8409d9a020d9e1cb4798e76760e0b9f68b07d5eedc8ccff1dee72325faeee96a90ddf0ab016774f0d313f5942d54e9f167f704c265dd1da8c47044736efba1c5bde2acfe3b35350dfff39b6dba2c06201a975d8f080b5d337b7e4cb42504094f90cb5ce177bc23536ec0ef7b6b52e6da02a8b9f7ba29afe027a4356ccc276256d94971facb7ad6d6f78bf1d8b6df7d2e0bd470ff0ab583e8e8cd6cb4eba4e819abb68e29ce88d3c142c9b2c98160e24ff4f676d3927ee4be445310ec6d9712603dc50ad709bc8ec382d7a269a5ca04716631b594d0a52c9510de820b9e8e887b8bf6bb83becd4125e30e40edf88107368bda0aea7036285d1ef1f7f1a43dd68d3b4fbf78cd93bb1ce1a1266932d0fa7bb089e3d8757759b9ac9f54de93c89a525e7f5cca365779ddd30cc32bf2e804d861c4ed43be94c1c9a1da043b2ad9b1016bff95dbeb13"
hash = string.scan(/.{32}/)
my_email = "puerile22@gmail.com"
md5 = Digest::MD5.new
email = md5.hexdigest(my_email)
arr = ['a'..'z', 'A'..'Z', '0'..'9'].map { |i| i.to_a }.flatten
arr.push('_').push('.').push('+').push('@')
possible_str = arr.permutation(2).to_a
arr.each do |i|
  possible_str.push([i,i])
end
ans = ""
(0..hash.length-1).each do |i|
  result = ""
  str = ""
  (0..possible_str.length - 1).each do |j|
    str = ans + possible_str[j].join('')
    result = md5.hexdigest(email + str + md5.hexdigest(str))
    if result == hash[i]
      ans = str
      break
    end
  end
end
puts ans