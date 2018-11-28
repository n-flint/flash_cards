#require './lib/card'


class Turn

  attr_reader :guess
  attr_reader :card

  def initialize(string, card)
    @guess = string
    @card = card

  end

  def correct?
    @guess == card.answer
  end

  def feedback
    if @guess == card.answer
      feedback = "Correct!"
    else
      feedback = "Incorrect"
    end

  end


end
