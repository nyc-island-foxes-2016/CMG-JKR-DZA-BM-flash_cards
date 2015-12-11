require 'relative'

class Card
  include Parser
  attr_reader :definition, :term, :flashcards

  def initialize(word = {})
    @definition = word[:definition]
    @term = word[:term]
  end

  def correct?(guess)
    guess == self.term ? true : false
  end



  def to_s

  end

end
p Card.new({definition: "a", term: "b"})
