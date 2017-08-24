module Deckable

  def remaining_cards
    card_array.length
  end

  def draw_card
    card = card_array[0]
    card_array.delete_at(0)
    card
  end
  
end
