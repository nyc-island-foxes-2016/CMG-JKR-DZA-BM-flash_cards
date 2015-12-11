
class Deck

  def initialize(flashcards_from_file)
    @flashcards = []
    flashcard_from_file.each_with_index do |element, index|
      if index % 2 == 0
        element = definition
        self.flashcards << Card.new({definition: definition, term: nil})
      else
        element = term
        flashcards[index - 1].term = term
      end
    end
  end

  def move_card_to_back
    flashcards.push(flashcards.shift)
  end

  def generate_random_card
    flashcards.shuffle
  end
end
