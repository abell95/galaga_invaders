require_relative 'wing'

class Wave
  include Formation

  WINGS = 5

  attr_reader :wings

  def initialize
    @wings = generate_wings()
  end

  def generate_wings
    generate(wing, WINGS)
  end

  def draw_wings
    draw(wings)
  end

  def update
    update(wings)
  end

  def level_up?
    if empty?(wings)
      true
    else
      false
    end
  end
end