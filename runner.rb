require_relative 'deck'

class Test
include Parser

  def initialize

    test_array = self.read('flash_cards.txt')
    test_deck = Deck.new(test_array)

  end

end



p sample.test_deck
