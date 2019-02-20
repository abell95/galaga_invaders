require_relative 'collision'

class PlayerMissle
  
  def initialize(xPosition, yPosition)
    @xPosition = xPosition
    @yPosition = yPosition
  end

  def update
    @yPosition += 20
  end

  def Fire
    Collision.add_player_missle(self)
  end

end