class Card
  attr_reader :definition, :flashcards
  attr_accessor :term

  def initialize(word = {})
    @definition = word[:definition]
    @term = word[:term]
  end

  def correct?(guess)
    guess == self.term ? true : false
  end

  def to_s
    "Definition: #{self.definition} Term: #{self.term}"
  end

end
