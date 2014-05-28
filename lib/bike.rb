class Bike

  def initialize
    @broken = false
  end

  def broken?
    # is the bike broken?
    @broken
  end

  def break!
    # uh-oh, you broke the bike.
    @broken = true
  end

end