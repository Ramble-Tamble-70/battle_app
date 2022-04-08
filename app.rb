require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player.rb'
require_relative './lib/game'

class Battle < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

# Where our routes go
  get '/test' do
    'Testing infrastructure working!'
  end

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1]), Player.new(params[:player_2]))
    redirect './play'
  end

  get '/play' do
    @player_1 = $game.player_1.name
    @player_2 = $game.player_2.name
    erb :play
  end

  get '/attack' do
    @player_1 = $game.player_1
    @player_2 = $game.player_2
    $game.attack($game.next_turn_v)
    erb :attack
  end

  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end