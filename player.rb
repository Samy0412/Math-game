class Player
  attr_accessor :life, :name

  def initialize(name)
    @name = name
    @life = 3
  end

  def lose_life
    @life = @life - 1
  end

  def is_dead?
    @life <= 0
  end

end




