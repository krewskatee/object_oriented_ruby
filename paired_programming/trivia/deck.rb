require_relative "deckable"

class Deck
  include Deckable

  attr_reader :card_array
  attr_writer :card_array

  def initialize(trivia_data)
    @card_array = []
    trivia_data.each do |question, answer|
      @card_array << Card.new(question: question, answer: answer)
    end
  end
end
