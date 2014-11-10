def mean_finder(arr)
	sum=0
	arr.each do |num|
		sum+=num.to_f
	end
	mean=sum/arr.count
	return mean
end
arr=[1,40,12,12,15,19,29]
puts mean_finder(arr)