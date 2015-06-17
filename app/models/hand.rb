class Hand
  attr_accessor :cards
  def initialize
    @cards = Array.new
  end

  def hit!(shoe)
    @cards << shoe
  end

  def value
    value = 0
    @cards.each do |card|
      if card.name == "A" && value > 11
        value+= 1
      else
        value+= card.value.to_i
      end
    end
    return value
  end
end

