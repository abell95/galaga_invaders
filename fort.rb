class Fort
  HEIGHT = 200
  WIDTH = 200

  attr_reader :x, :y

  def initialize(screen_width, screen_height)
    @y = screen_height - HEIGHT
    @x = screen_width / 2 # center screen
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
