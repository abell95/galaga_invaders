class Fort
  HEIGHT = 200
  WIDTH = 200
  MAX_HEALTH = 10

  attr_reader :x, :y, :health

  def initialize(screen_width, screen_height)
    @y = screen_height - HEIGHT
    @x = screen_width / 2 # center screen
	 @health = MAX_HEALTH
  end
  
  def take_damage
    health -= 1
  end

  def destroyed?
    health <= 0
  end
  
  def to_s
    "🏰 (#{x}, #{y})"
  end

  def draw
    puts self
  end

  def update

  end
end
