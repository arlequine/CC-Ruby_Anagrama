def canonical(word)
  word.split("").sort
end

def are_anagram?(word1, word2)
  canonical(word1) == canonical(word2)     
end

p are_anagram?("amor", "omar")
p are_anagram?("arroz", "zorra")
p are_anagram?("rosa", "silla")

def anagram_for(word, dictionary)
	anagram = []
	dictionary.each do |dicc|
		if are_anagram?(word, dicc)
			anagram.push(dicc)
		end
	end
	anagram
end

p anagram_for("orma", ["amor", "piña", "omar", "ramo"])

def anagram_for(word, dictionary)
	anagram = []
	dictionary.select! { |dicc|
		are_anagram?(word, dicc)
	}
end

p anagram_for("orma", ["amor", "piña", "omar", "ramo"])