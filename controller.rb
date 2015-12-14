require 'pry'
require_relative 'Parser'
require_relative 'deck'
require_relative 'view'

class Controller
  # include Parser
  attr_reader :viewer, :deck

  def initialize(file)
    @parsed_file = Parser.read(file)
    @viewer = View.new
    @deck = Deck.new(@parsed_file)
    @deck.generate_random_card
    @viewer.welcome_message
    run_flashcard_game
  end

  def run_flashcard_game
    @viewer.show_definition(@deck.flashcards.first)
    player_input = @viewer.input
    if player_input == "exit"
      return @viewer.goodbye_message
    elsif player_input == @deck.flashcards.first.term
        @viewer.correct_message
        @deck.move_card_to_back
        self.run_flashcard_game
      else
        @viewer.incorrect_message
        self.run_flashcard_game
      end
  end

end


controller = Controller.new('flash_cards.txt')
