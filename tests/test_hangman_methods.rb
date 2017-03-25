require 'minitest/autorun'
require_relative '../hangman_methods.rb'

class HangMan <Minitest::Test

	def test_secret_word_5_letters
		secret_word = Secret_word.new('rouge')
		assert_equal(['_', '_', '_', '_', '_'], secret_word.array_length)
	end

	def test_that_O_is_in_position_1
		secret_word = Secret_word.new('ROUGE')
		secret_word.match_letters('O')
		assert_equal(['_', 'O', '_', '_', '_'], secret_word.container)
	end

	def test_1_is_invalid_input
		secret_word = Secret_word.new('rouge')
		secret_word.input_validation('1')
		assert_equal(false, secret_word.input_validation(bad))
	end

end