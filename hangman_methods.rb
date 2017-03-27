class Secret_word

	attr_accessor :secret_word, :container, :wrong_count, :guesses

	def initialize(secret_word)
		@secret_word = secret_word.upcase
		@container = array_length
		@wrong_count = 0
		@guesses = []
	end

	def array_length
		Array.new(secret_word.length, ' _')
	end

	def match_letters(letter_guess)
		@guesses << letter_guess.upcase
		@guesses << ' '
		letter_guess = letter_guess.upcase

		if secret_word.include?(letter_guess)
		
			secret_word.each_char.with_index do |letter, index_position|
				if letter_guess == letter
					container[index_position] = letter
				end
			end	
		else
			@wrong_count += 1
		end
	end

	def input_validation(bad)
		if secret_word.match(/[^A-Za-z]/) 
			false
		else
			true
		end	
	end


	def loser?
		if wrong_count == 6
			true
		else
			false
		end
	end

	def donot_repeat(letter_repeat)
		
		if guesses.include?(letter_repeat)
			true
		else
			false
		end

	end

	def stick_it_in_now
		
	end

end