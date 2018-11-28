class Deck
  attr_reader :question
  attr_reader :answer
  attr_reader :category
  attr_reader :card_1
  attr_reader :card_2
  attr_reader :card_3




  def initialize(card_1, card_2, card_3)

    @card_1 = card_1
    @card_2 = card_2
    @card_3 = card_3



    # @question = question
    # @answer = answer
    # @category = category

    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)


    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)

    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    cards = [card_1, card_2, card_3]

  end



end
