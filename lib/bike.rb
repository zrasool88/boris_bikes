class Bike

  def initialize
    fix!
  end

  def fix!
    @broken = false
  end

  def broken?
    @broken
  end

  def break!
    @broken = true
  end

end
