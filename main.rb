require_relative 'ship'
require_relative 'fort'
require_relative 'wave'
require_relative 'missile_collection'

class GalagaInvaders

  WIDTH = 1920
  HEIGHT = 1080

  attr_accessor :ship, :missiles

  def initialize
    @caption = "Galaga Invaders"
    @active = false
    @ship = Ship.new(WIDTH, HEIGHT)
    @fort = Fort.new
    @ufo = Ufo.new
    @wave = Wave.new
    @missiles = MissileCollection.new
    @time = Time.new
  end

  def update
    if time.active
      ship.update
      fort.update
      ufo.update
      wave.update
      missiles.update

      collision_detector(missiles)  
      
      if ufo.hit
        score_bonus

      # time dictates freq of squadrons
      if time.release_squad
        #instantiate and draw new squadron?
      
      if wave.formed
        at_some_cool_timer_related_function do
          wave.launch_attack
        end

      if mothership.capture
        # do something crazy with player ship
        
      if wave.empty
        # next level
        # time class may have this logic?    
    else game_over
  end

  def draw
    ship.draw
    fort.draw
    ufo.draw
    wave.draw
    missiles.draw
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
    elsif key == ' '
      missiles.shoot_from(ship)
    end
  end

end

GalagaInvaders.new.show
