class View
  attr_reader :reply

  def input
    reply = gets.chomp
  end

  def welcome_message
    puts "Welcome to Flash Cards"
  end

  def show_definition(card)
    puts card.definition
  end

  def correct_message
    puts "Correct!"
    puts "\n"
  end

  def learned_message(card)
    puts "It looks like you learned #{card.term}. We'll move it into your 'learned' deck."
    puts "\n"
  end

  def incorrect_message
    puts "Incorrect! Try again!"
    puts "\n"
  end

  def goodbye_message
    puts "Thanks for playing!"
  end

  def display_deck_defs(deck)
    # binding.pry
    deck.flashcards.each{|card| puts "- " + card.definition}
    puts "\n"
  end

end
