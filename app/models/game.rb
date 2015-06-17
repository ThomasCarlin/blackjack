class Game
  attr_accessor :shoe, :player, :dealer
  def initialize(shoe, player)
    @shoe = shoe
    @player = player
  end
end