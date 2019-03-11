require_relative 'missile'

class MissileCollection 
  attr_reader :missiles

  def initialize
    missiles = []
  end

  def shoot_from(shooter)
    add(Missile.new(shooter.muzzle, shooter.default_velocity))
  end

  def add(missile)
    missiles << missile
  end

  def remove(missile)
    missiles.delete(missile)
  end

  def draw
    missiles.each(&:draw)
  end

  def update
    missiles.each(&:update)
  end
end