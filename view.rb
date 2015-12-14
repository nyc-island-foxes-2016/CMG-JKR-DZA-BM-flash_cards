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
  end

  def incorrect_message
    puts "Incorrect! Try again!"
  end

  def goodbye_message
    puts "Thanks for playing!"
  end

end
