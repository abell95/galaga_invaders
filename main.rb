require_relative 'player'

class GalagaInvaders
  def initialize
    @caption = "Galaga Invaders"
    @active = false
    @ship = Ship.new
    @fort = Fort.new
    @ufo = Ufo.new
    @wave = Wave.new
  end

  def update
    @ship.update
    @fort.update
    @ufo.update
    @wave.update
  end

  def draw
    @ship.draw
    @fort.draw
    @ufo.draw
    @wave.draw
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
