require_relative 'deck'
require_relative 'Parser'
# require_relative "flash_cards.txt"

class Test
include Parser

  def initialize

    test_array = self.read('flash_cards.txt')
    test_deck = Deck.new(test_array)

  end

end

sample = Test.new

p sample.test_deck
