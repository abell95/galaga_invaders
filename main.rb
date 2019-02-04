class GalagaInvaders
  def initialize
    @caption = "Galaga Invaders"
    @active = false
    @playerShip = PlayerShip.new
  end

  def update
    @playerShip.update
  end

  def draw
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
