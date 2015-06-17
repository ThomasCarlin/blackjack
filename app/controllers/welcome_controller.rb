class WelcomeController < ApplicationController
  def index
  	@deck = Deck.new
  end
end
