
dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
corpus = "below"

hash = Hash.new
n = 0

	dictionary.each do |word|

		hash[word]=n
		if corpus.include?(word) == true
			hash[word]+=1
		end
	end

	hash.each do |key, value|
		if value == 0
		hash.delete(key)
		end
	end

puts hash
