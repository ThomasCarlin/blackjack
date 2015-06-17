class GameController < ApplicationController
	def index
		@shoe = session[:shoe]
  	@game = Game.new(@shoe,@player)
  	@player_hand = Hand.new
  	@dealer_hand = Hand.new
  	@shoe.shuffle!
  	@deck = Array.new	
  	@shoe.each do |card|
  		cardparams= card.split("-")
  		@deck << Card.new(cardparams[1],cardparams[0])
  	end
  	@deck.shuffle!
  	2.times { @player_hand.hit!(@deck.shift)}
  	2.times { @dealer_hand.hit!(@deck.shift)}
  	session[:shoe]= @deck
  end
 
  def show
  end
 
  def new
  	@shoe = Array.new
  	for i in 0...params[:shoesize].to_i
  		deck = Deck.new
  		deck.cards.each do |card|
  			@shoe << card
  		end
  	end
  	@shoe= @shoe.shuffle
  	@player = params[:player]
  	session[:shoe] = @shoe
  	redirect_to game_index_path
  end
 
  def edit
  end
 
  def create
    @game = Game.new(game_params)
 
  end
 
  def update
  end
 
  def destroy
  end
 
  private
    def article_params
      params.require(:article).permit(:shoe, :player,:shoesize)
    end

end
