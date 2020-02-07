class Player
  DEFAULT_HP = 100
  attr_reader :name, :hitpoints

  def initialize(name, hitpoints = DEFAULT_HP)
    @name = name
    @hitpoints = DEFAULT_HP
  end

  def receive_damage
    @hitpoints -= 10
  end
end
