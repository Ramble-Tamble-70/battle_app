require_relative '../../lib/player.rb'

describe Player do

  describe '#name' do
  it 'should return name' do
    player = Player.new("Michael") 
    expect(player.name).to eq("Michael")
    end
  end
end