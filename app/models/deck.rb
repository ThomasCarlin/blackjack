class Deck
  attr_accessor :cards
  def initialize
  	@cards = Array.new
  	suits = ["clubs","diamonds","spades","hearts"]
  	numbers = [2,3,4,5,6,7,8,9,10]
    suits.each do |suit|
      numbers.each do |number|
        @cards << Card.new(suit, number)
      end
      ["J", "Q", "K", "A"].each do |facecard|
        @cards << Card.new(suit, facecard)
      end
    end
  end
end