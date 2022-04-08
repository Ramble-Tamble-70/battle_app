require_relative '../../lib/game'

describe Game do
   it 'should initialize with a player' do
    subject = Game.new(Player.new('David'))
    expect(subject.player_1.name).to eq('David')
  end
end