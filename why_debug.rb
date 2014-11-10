require 'pry-debugger'
binding.pry
module ArrayUtil
  def self.find_max(input)
    max = 0
    input.each do |n|
      if n > max
        return n
      end
    end

    max
  end
end

array = [5, 8, 2]
res =  ArrayUtil.find_max( array )
puts "#{res} is the largest number in the array"