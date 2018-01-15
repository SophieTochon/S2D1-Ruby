dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
corpus = "Howdy partner, sit down! How's it going?"
corpus_split = corpus.split(" ")

print corpus_split

hash = Hash.new



	dictionary.each do |dic_word|
		hash[dic_word]=0

		corpus_split.each do |corpus_word|

		if corpus_words.include?(dic_word) == true
			hash[dic_word]+=1
		end

		end
	end

	hash.each do |key, value|
		if value == 0
		hash.delete(key)
		end
	end

puts hash