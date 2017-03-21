require 'sinatra'
require 'rubygems'

class HangManApp <Sinatra::Base

	get '/' do
		"Hello World"
	end

	# get '/' do
	# 	erb :players

	# end

	# post '/player' do
	# 	player = params[:player]


	# end

end