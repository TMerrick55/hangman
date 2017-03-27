require 'sinatra'
require_relative 'hangman_methods.rb'

class HangManApp <Sinatra::Base

	# get '/' do
	# 	'Hello World!'
	# end


	get '/' do
		erb :players

	end

	post '/player' do
		backend_player1 = params[:p1_name_input]
		backend_player2 = params[:p2_name_input]

		# "Player 1 name is #{backend_player1} and player 2 name is #{backend_player2}"
		erb :secret_word, :locals => {player1: backend_player1, player2: backend_player2}
	end

	post '/secret_word' do
		backend_player1 = params[:p1_name_input]
		backend_player2 = params[:p2_name_input]
		backend_secret = params[:secret_word]
		secret_word = Secret_word.new(backend_secret)
		# secret_word.container
		# "player 1 is #{backend_player1} and player 2 name is #{backend_player2} and the word is #{backend_secret}"
		erb :next_file, :locals => {player1: backend_player1, player2: backend_player2, secret_word: backend_secret, container: secret_word.container.join}
	end

	get '/guess_letter' do
		backend_player1 = params[:backend_player1]
		backend_player2 = params[:backend_player2]
		backend_secret = params[:backend_secret]
		backend_letter_input = params[:backend_letter_input]
		container = params[:container]
		erb :next_file, :locals => {player1: backend_player1, player2: backend_player2, secret_word: backend_secret, container: container}
	end

	post '/next_file' do
		backend_player1 = params[:p1_name_input]
		backend_player2 = params[:p2_name_input]
		backend_secret = params[:secret_word]
		backend_letter_input = params[:letter_input]
		secret_word = Secret_word.new(backend_secret)
		secret_word.match_letters(backend_letter_input)
		container = secret_word.container
		container = container.join
		#puts container.class
		# secret_word.wrong_count

		# erb :display_hangman, :locals => {player1: backend_player1, player2: backend_player2, secret_word: backend_secret, container: secret_word.container.join, wrong_count: secret_word.wrong_count}

		redirect '/guess_letter?backend_player1=' + backend_player1 + '&backend_player2=' + backend_player2 + '&backend_secret=' + backend_secret + '&backend_letter_input' + backend_letter_input  + '&container=' + container

	end

end



