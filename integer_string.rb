def add(str)
  num = str[-1]
  num = num.to_i + 1
  if num == 10
    num = 0
    index = str.length - 2
    while helper(str[index].to_i)
      str[index] = '0'
      if index == 0
        str = '1' + str
      else
        index -= 1
      end
    end
    if index != 0
      str[index] = (str[index].to_i + 1).to_s
    end
  end
  num = num.to_s
  str[-1] = num
  return str
end

def helper(num)
  return true if num == 9
  return false
end
str = '1234'
puts ('1235' == add(str))
puts ('2400' == add('2399'))
puts ('1000' == add('999'))
puts ('1235' == add(str))
puts ('-234' == add('-235'))

