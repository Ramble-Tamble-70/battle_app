class Player
  attr_reader :name, :HP

  def initialize(name, hp=100)
    @name = name
    @HP = hp
  end
  
  def receive_damage
    @HP -= 10
  end

end