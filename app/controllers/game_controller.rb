class GameController < ApplicationController
  def index
    @deck = DeckBuilder.new(1).deck.shuffle
    @current_card = @deck[0].first
  end
end
