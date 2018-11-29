class Round

  attr_reader :deck,
              :current_card

  def initialize(deck_argument)
    @deck = deck_argument
    @current_card = @deck.cards[0]
  end

  def turns
    @turns = []
  end
end
