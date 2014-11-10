def letter_inventory(str)
	str.downcase!
	str.gsub!(/[^[a-z]]/,"")
	arr=str.split("")
	hash=Hash.new(0)
	arr.each do |letter|
		hash[letter]+=1
	end
	array=hash.sort do |x,y|
		(y[1] <=> x[1]) == 0 ? (x[0] <=> y[0]):(y[1] <=> x[1])
	end
	array.map {|pair| pair.join(" = ")}.join(", ")
end