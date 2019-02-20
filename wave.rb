require_relative 'wing'

class Wave
  WINGS = 5

  attr_reader :wings

  def initialize
    @wings = generate_wings()
  end

  def generate_wings
    wings = []
    for i in 0...WINGS do
      wings << Wing.new
    end
  end

  def draw
    wings.each do { |wing| wing.draw }
  end

  def update
    wings.each do |wing|
      if not wing.empty?
        wing.update
      end
    end
  end
end