class Player

  def initialize(num)
    @id = num
    @name = "Player #{num}"
    @plays = 3
  end

  attr_accessor :name, :plays

end

