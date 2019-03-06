class Time
  attr_accessor :wave

  def initialize(wave)
    @wave = wave
  end

  def level_change
    wave.empty
    increase_level
  end

  def increase_level
    spawn_next_wave
  end
end
