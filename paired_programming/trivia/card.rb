class Card
  attr_reader :question, :answer

  def initialize(card_content)
    @question = card_content[:question]
    @answer = card_content[:answer]
  end

end
