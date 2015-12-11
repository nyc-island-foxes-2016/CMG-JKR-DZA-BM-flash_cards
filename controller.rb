require 'pry'
require_relative 'Parser'
require_relative 'deck'
require_relative 'view'
# require_relative 'model'

class Controller
  # include Parser

  def initialize(file)
    @parsed_file = Parser.read(file)
    @viewer = View.new
    @deck = Deck.new(@parsed_file)
  end

  def run_flashcard_game
    until view.input == "exit"





  end

end

binding.pry
controller = Controller.new('flash_cards.txt')

puts 'done'
