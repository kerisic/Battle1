class Player
  attr_reader :name

  DEFAULT_HIT_POINTS = 60

  def initialize(name)
    @hitpoints = DEFAULT_HIT_POINTS
    @name = name
  end

  def hit_points
    @hitpoints
  end

  def receive_damage
    @hitpoints -= 10
  end
end
