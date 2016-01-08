require_relative "deck"
require_relative "card"


trivia_data = {
  "What is the capital of Illinois?" => ["Springfield", "Chicago", "Evanston"],
  "Is Africa a country, a continent, or planet?" => ["continent", "country", "planet"],
  "Tug of war was an Olympic event in what year?" => ["1908", "1956", "1992"]
}


deck = Deck.new(trivia_data) # deck is an instance of the Deck class

while deck.remaining_cards > 0
  card = deck.draw_card # card is an instance of the Card class
  puts card.question
  user_answer = gets.chomp
  card.check_answer(user_answer)
end
