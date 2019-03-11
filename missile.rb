require_relative 'collision'

class Missile
  attr_accessor :location, :velocity

  def initialize(location)
    @location = location
  end

  def fire(velocity)
    @velocity = velocity
  end

  def update
    location.y += velocity
  end

  def draw
    puts self
  end

  def to_s
    "🚀, (#{location})"
  end

  def vector
  end
end
