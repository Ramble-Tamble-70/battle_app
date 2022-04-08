# require 'game'
# require 'player'
require_relative '../../lib/player.rb'
require_relative '../../lib/game.rb'
describe 'switching the turns' do
    it 'when first player attacks the second' do
        player1 = Player.new("Michael") 
        player2 = Player.new("David")
        game = Game.new(player1,player2)
        game.attack(player2)
        expect(game.next_turn_v.name).to eq("David") 
    end
end
