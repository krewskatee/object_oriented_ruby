# 1. Write out the Card and Deck classes to make the program work. The Deck class should hold a list of Card instances.
# 2. Change the program to use multiple choice questions. The Card class should be responsible for checking the answer.
# 3. CHALLENGE: Change the program to allow the user to retry once if they get the wrong answer.
# 4. CHALLENGE: Change the program to keep track of number right/wrong and give a score at the end.
# 5. CHALLENGE: Change the program to give the user the choice at the end of the game to retry the cards they got wrong.
# 6. CHALLENGE: Change the interface with better prompts, ASCII art, etc. Be as creative as you'd like!

require_relative "deck"
require_relative "card"

trivia_data = {
  "What is the capital of Illinois?" => "Springfield",
  "Is Africa a country or a continent?" => "Continent",
  "Tug of war was once an Olympic event. True or false?" => "True"
}

replay = true

while replay != false
  puts "     .->    (`-')  _                             <-. (`-')   (`-')  _ "
  puts " (`(`-')/`) ( OO).-/  <-.    _             .->      \(OO )_  ( OO).-/"
  puts ",-`( OO).',(,------.,--. )   \-,-----.(`-')----. ,--./  ,-.)(,------."
  puts "|  |\  |  | |  .---'|  (`-')  |  .--./( OO).-.  '|   `.'   | |  .---'"
  puts "|  | '.|  |(|  '--. |  |OO ) /_) (`-')( _) | |  ||  |'.'|  |(|  '--.  "
  puts "|  |.'.|  | |  .--'(|  '__ | ||  |OO ) \|  |)|  ||  |   |  | |  .--' "
  puts "|   ,'.   | |  `---.|     |'(_'  '--'\  '  '-'  '|  |   |  | |  `---."
  puts "`--'   '--' `------'`-----'    `-----'   `-----' `--'   `--' `------'"

  deck = Deck.new(trivia_data) # deck is an instance of the Deck class

  answers_wrong = 0
  answers_right = 0
  while deck.remaining_cards > 0
    num_wrong = 0
    card = deck.draw_card # card is an instance of the Card class
    while num_wrong < 2
      puts card.question
      user_answer = gets.chomp
      if user_answer.downcase == card.answer.downcase
        puts "Correct!"
        answers_right += 1
        trivia_data.delete(card.question)
        break
      else
        if num_wrong == 1
          puts "Incorrect!"
          answers_wrong += 1
        else
          puts "Incorrect!, You have one more try."
        end
          num_wrong += 1
      end
    end
  end

  p "Your had #{answers_right} answer(s) right and #{answers_wrong} answer(s) wrong."
  p "Enter 'yes' or 'y' if you want to retry the card you got wrong:"
  user_answer = gets.chomp.downcase
  if user_answer == "yes" || user_answer == "y"
    replay = true
  else
    p "Thanks for playing!"
    replay = false
  end
end
