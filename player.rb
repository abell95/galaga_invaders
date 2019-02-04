
class PlayerShip
  def initialize(position, hitbox)
    @position = position
	  @hitbox = hitbox
  end

  def move(position)
    @position = position
  end

  def shoot
    bullet = Bullet.new(@position)
    bullet.fire()
  end

  def update(playerShip)
    if playerShip.isHit

    end
  end

  def isHit(playerShip, bullet)

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
