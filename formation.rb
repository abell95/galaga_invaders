module Formation
  def generate(formation, constraint)
    formations = []
    for i in 0...constraint do 
      formations << formation.new
    end
  end

  def draw(Formation)
    formation.each do |member|
      member.draw
    end
  end

  def update(Formation)
    if not empty?(Formation)
      formation.each do |member|
        member.update
      end
    end
  end

  def empty?(Formation)
    if Formation.current == 0
      true
    else
      false
    end
  end
end