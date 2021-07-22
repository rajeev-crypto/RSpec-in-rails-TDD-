class QuoteString 
	attr_reader :sentence 
	def initializ(sentence)
		@sentence = sentence 
	end 

	def to_s
		@sentence
	end 
end 

