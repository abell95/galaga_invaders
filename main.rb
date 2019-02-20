require_relative 'ship'

class GalagaInvaders

  WIDTH = 1920
  HEIGHT = 1080

  attr_accessor :ship

  def initialize
    @caption = "Galaga Invaders"
    @active = false
    @ship = Ship.new(WIDTH, HEIGHT)
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
      key_pressed(gets.chomp)
    end
  end

  def key_pressed(key)
    if key == 'a'
      ship.move_left
    elsif key == 'd'
      ship.move_right
    end
  end

end

GalagaInvaders.new.show
