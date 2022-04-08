require_relative './player'

class Game
  attr_reader :player_1, :player_2, :next_turn_v

  def initialize(player_1 = Player.new('player_1'), player_2 = Player.new('player_2'))
    @player_1 = player_1
    @player_2 = player_2
    @next_turn_v = @player_1
  end

  def attack(player_attacked)
    player_attacked.receive_damage
    next_turn
  end
  
  def next_turn 

    if @next_turn_v == @player_1
       @next_turn_v = @player_2
    else
       @next_turn_v = @player_1
    end
  end
end