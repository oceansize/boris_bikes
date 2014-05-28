class Bike

  def initialize
    fix!
  end

  def broken?
    # is the bike broken?
    @broken
  end

  def break!
    # uh-oh, you broke the bike.
    @broken = true
  end

  def fix!
    @broken = false
  end

end