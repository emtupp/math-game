class Player

  def initialize
    @score = 3
  end

  def score_adjust
    @score = (@score - 1)
  end

  attr_accessor :score

end