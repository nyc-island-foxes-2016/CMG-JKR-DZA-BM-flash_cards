require_relative 'model'
require 'pry'

class Deck
  attr_reader :flashcards_from_file, :flashcards, :definition
  attr_accessor :term

  def initialize(flashcards_from_file)
    @flashcards = []
    flashcards_from_file.each_with_index do |element, index|
      if index % 2 == 0
        self.flashcards << Card.new({definition: element})
      else
        self.flashcards.last.term = element
      end
    end
    @flashcards
  end

  def move_card_to_back
    flashcards.push(flashcards.shift)
  end

  def generate_random_card
    flashcards.shuffle
  end #?
end
