class GalagaInvaders
  def initialize
    @caption = "Galaga Invaders"
    @active = false
    @ship.Ship.new
    @fort.Fort.new
    @alien.Alien.new
    @ufo.Ufo.new
    @big_alien.BigAlien.new
  end

  def update
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