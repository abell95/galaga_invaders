class GalagaInvaders
  def initialize
    @caption = "Galaga Invaders"
    @active = false
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