
def encode(str)
  arr = str.scan(/(.)(\1*)/).inject("") do |encoding,(char,repeat)|
    #encoding  << char<<"(#{(1+repeat.length).to_s})"
    encoding << yield(repeat,char)
  end
end

encode('aabbcd') {|count,char| (1+count.length).to_s << char}
encode('aabbcd') {|count,char| char << (1+count.length).to_s }
encode('aabbcd') {|count,char| char << "(#{(1+count.length).to_s})" }
encode('aabbcd') {|count,char| 
  if 1+count.length>1
    char << "(#{(1+count.length).to_s})"
  else
    char
  end}