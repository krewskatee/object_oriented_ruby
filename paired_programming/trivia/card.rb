class Card
  attr_reader :question, :answer
  attr_writer :question, :answer

  def initialize(card_content)
    @question = card_content[:question]
    @answer = card_content[:answer]
  end

end
