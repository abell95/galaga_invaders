require './player_bullet.rb'

class PlayerShip
  def initialize(position, hitbox)
    @position = position
	  @hitbox = hitbox
  end
  
  def move(position)
    @position = position
  end
  
  def shoot
    bullet = PlayerBullet.new(@position, "player")
    bullet.fire()
  end

  def key_pressed(key)
    case key
    when 'a'
      move(-10)
    when 'd'
      move(10)
    when 'Space'
      shoot()
    end
  end
  
end