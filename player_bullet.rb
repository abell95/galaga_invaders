require './collision.rb'

class PlayerBullet
  
  def initialize(xPosition, yPosition)
    @xPosition = xPosition
    @yPosition = yPosition
  end

  def update
    @yPosition += 20
  end

  def Fire
    Collision.add_player_bullet(self)
  end

end