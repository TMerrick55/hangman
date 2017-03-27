require 'minitest/autorun'
require_relative '../hangman_methods.rb'

class HangMan <Minitest::Test

	# def test_secret_word_5_letters
	# 	secret_word = Secret_word.new('rouge')
	# 	assert_equal(['_', '_', '_', '_', '_'], secret_word.array_length)
	# end

	# def test_that_O_is_in_position_1
	# 	secret_word = Secret_word.new('ROUGE')
	# 	secret_word.match_letters('O')
	# 	assert_equal(['_', 'O', '_', '_', '_'], secret_word.container)
	# end

	# def test_1_is_invalid_input
	# 	secret_word = Secret_word.new('rouge')
	# 	secret_word.input_validation('o')
	# 	assert_equal(false, secret_word.input_validation(bad))
	# end

	def test_repeated_letter
		secret_word = Secret_word.new('ROUGE')
		secret_word.guesses = ['X', 'Y', 'M']
		assert_equal(false, secret_word.donot_repeat('V'))
	end

	def test_repeated_letter_false
		secret_word = Secret_word.new('ROUGE')
		secret_word.guesses = ['X', 'Y', 'M']
		assert_equal(true, secret_word.donot_repeat('M'))
	end

end