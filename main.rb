require_relative 'player'

class GalagaInvaders
  def initialize
    @caption = "Galaga Invaders"
    @active = false
	 @player = PlayerShip.new
  end

  def update
  end

  def draw
    @player.draw
  end

  def show
    @active = true
    while true do
      update
      draw
    end
  end
  
end

GalagaInvaders.new.show