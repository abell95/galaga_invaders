class Alien

  attr_accessor :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def move()

  end

  def shoot()

  end

  def muzzle_location()
    y - height
  end

  def center
    x + width / 2

end

class SmallAlien > Alien

  def initialize(sprite)

  end

  def move()

  end

  def shoot()

  end
end


class BigAlien > Alien
  def initialize(sprite)

  end

  def move()

  end

  def shoot()

  end

  def capture()

  end
end
