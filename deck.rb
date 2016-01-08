class Deck

  attr_reader :trivia_data, :cards

  def initialize(trivia_data)
    @trivia_data = trivia_data
    @cards = []
    trivia_data.each do |question, answer|
      @cards << Card.new(question, answer)
    end
  end

  def remaining_cards
    @remaining_cards = cards.size
  end

  def draw_card
    chosen_card = @cards.sample
    @cards.delete(chosen_card)
    @remaining_cards = @cards
    chosen_card
  end

end
