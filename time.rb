class Time
  TIMER = TRUE
  
  attr_accessor :wave :hanger

  def initialize(wave, hanger)
    @wave = wave
    @hanger = hanger
  end

  def level_change
    wave.empty
    increase_level
  end

  def increase_level
    spawn_next_wave
  end

  def game_over
    hanger.empty
    timer = False;
end
