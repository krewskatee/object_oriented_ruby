class Deck

  attr_reader :card_array
  attr_writer :card_array

  def initialize(trivia_data)
    @card_array = []
    trivia_data.each do |question, answer|
      @card_array << Card.new(question: question, answer: answer)
    end
  end

  def remaining_cards
    card_array.length
  end

  def draw_card
    card = card_array[0]
    card_array.delete_at(0)
    card
  end

end
