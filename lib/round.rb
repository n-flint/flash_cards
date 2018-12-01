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

  def take_turn(guess)
    @new_turn = Turn.new(guess, @current_card)
    #shovel the current card into the @turns array
    @turns << @new_turn
    deck_index = @deck.cards.index(@current_card)
    deck_index += 1
    @current_card = @deck.cards[deck_index]
    # require "pry"; binding.pry
    return @new_turn
  end

  def number_correct
    correct_guesses = 0
    @turns.each do |turn|
      if turn.correct? == true
      correct_guesses += 1
      end
    end
    return correct_guesses
  end

  def number_correct_by_category(category)
    correct_guesses_by_category = 0
    @turns.each do |turn|
      if turn.correct? == true
      correct_guesses_by_category += 1
      end
    end
    return correct_guesses_by_category
  end










end
