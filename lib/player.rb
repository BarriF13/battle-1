class Player
  DEFAULT_HP = 60

  def initialize(playername)
    @playername = playername
    @hitpoints = DEFAULT_HP
  end

  def name
    @playername
  end

  def hitpoints
    @hitpoints
  end
end
