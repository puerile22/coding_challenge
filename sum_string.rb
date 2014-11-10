def sum_string(str)
  str.each_codepoint.inject(:+)
  #arr=str.split("")
  #sum=0
  #arr.each do |letter|
    #if "0123456789".include?(letter)
    #  sum+=letter.to_i
    #else
   #   sum+=letter.ord
    #end
  #end
end
p sum_string('hello')

