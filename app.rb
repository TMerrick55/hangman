require 'sinatra'
require 'rubygems'

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

		# "player 1 is #{backend_player1} and player 2 name is #{backend_player2} and the word is #{backend_secret}"
		erb :next_file, 
	end

end



