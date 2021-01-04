class Player

  def initialize(id)
    @score = 3
    @id = id
  end

  def score_adjust
    @score = (@score - 1)
  end

  attr_accessor :score, :id

end