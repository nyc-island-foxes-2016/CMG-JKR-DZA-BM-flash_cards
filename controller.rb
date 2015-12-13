require 'pry'
require_relative 'Parser'
require_relative 'model'
require_relative 'deck'
require_relative 'view'

class Controller
  # include Parser
  attr_reader :viewer, :deck

  def initialize
    raise ArgumentError.new("You need to input a text file.") if !ARGV[0].include?(".txt")
    file_name = ARGV.shift
    @parsed_file = Parser.read(file_name)
    @viewer = View.new
    @deck = Deck.new(@parsed_file)
    @deck.generate_random_card
    @viewer.welcome_message
    run_flashcard_game
  end

  def run_flashcard_game
    # binding.pry
    current_card = @deck.flashcards.first
    @viewer.show_definition(current_card)
    # @viewer.show_definition(@deck.flashcards.first)
    player_input = @viewer.input
    if player_input == "exit"
      return @viewer.goodbye_message
    elsif player_input == "display deck"
      @viewer.display_deck_defs(@deck)
      self.run_flashcard_game
    elsif player_input == "display learned"
    elsif current_card.correct?(player_input)
        @viewer.correct_message
        if current_card.correct_count >2 && current_card.ratio == 1
          @viewer.learned_message(current_card)
          @deck.move_card_to_learned
        else
          @deck.move_card_to_back
        end
        self.run_flashcard_game
    else
      @viewer.incorrect_message
      self.run_flashcard_game
    end
  end

end


controller = Controller.new
