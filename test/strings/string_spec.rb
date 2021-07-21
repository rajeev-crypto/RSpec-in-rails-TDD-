require_relative "string" 
RSpec.describe BasicString do 

	before do 
		@test_word = "Ruby"
		@sentence = "There is a gemstone calLed ruby in existence"
		@text = BasicString.new(@sentence)
	end 

	context "case-sensitive" do 
		it "should output interpolated text" do 
			test_word = "Ruby"
			sentence = "There is a gemstone called ruby in existence"
			text = BasicString.new(sentence)
			result = text.contains_word? test_word 
			expect(result).to be_falsey
		end
	end 

	context "case-insensitive" do 
		it "should output interpolated text" do 
			test_word = "Ruby"
			sentence = "There is a gemstone caled ruby in existence"
			text = BasicString.new(sentence)
			result = text.contains_word_ignorecase? test_word 
			expect(result).to be_truthy 
		end 
	end 
end 
