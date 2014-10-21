def throne(str)
  arr = str.split("")
  words = arr.permutation(arr.length).to_a
  ans = []
  words.each do |word|
    if word.length % 2 == 0
      ans<<word if word[0...word.length/2] == word[word.length/2..-1].reverse
    else
      ans<<word if word[0...word.length/2] == word[word.length/2+1..-1].reverse
    end
  end
  return ans.uniq.length
end