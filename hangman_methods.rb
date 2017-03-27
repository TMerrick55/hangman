class Secret_word


	attr_accessor :secret_word, :container, :wrong_count

	def initialize(secret_word)
		@secret_word = secret_word.upcase
		@container = array_length
		@wrong_count = 0
	end

	def array_length
		Array.new(secret_word.length, '_ ')
	end

	def match_letters(letter_guess)
		letter_guess = letter_guess.upcase
		secret_word.each_char.with_index do |letter, index_position|
			if letter_guess == letter
				container[index_position] = letter
			else 
				@wrong_count += 1
			end

		end	
	end

	def input_validation(bad)
		if secret_word.match(/[^A-Za-z]/) 
			false
		else
			true
		end	
	end


end