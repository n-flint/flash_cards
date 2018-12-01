class Round

  attr_reader :deck,
              :current_card,
              :turns,
              :new_turn

  def initialize(deck_argument)
    @deck = deck_argument
    @current_card = @deck.cards[0]
    @turns = []
  end

  def take_turn(tt_argument)
    @new_turn = Turn.new(tt_argument, @current_card)
  end
  
end
