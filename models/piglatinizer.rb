class PigLatinizer


	def piglatinize(word)
		return word + 'way' if word.start_with?('a','e','i','o','u','A','E','I','O','U')
		until word.start_with?('a','e','i','o','u','A','E','I','O','U')
			word = word[1..-1] + word[0] 
		end 
		word = word + 'ay'
	end

	def to_pig_latin(sentence)
		sentence = sentence.split(" ")
		sentence.map {|word| self.piglatinize(word)}.join(' ')
	end

end