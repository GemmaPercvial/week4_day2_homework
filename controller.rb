require('sinatra')
require('sinatra/contrib/all') if development?
require_relative './models/game'

also_reload('./models/*')

get '/game_play/:player1_input/:player2_input' do
  outcome = Game.new( params[:player1_input], params[:player2_input])
  @game_result = outcome.game_play
  erb :game
end
