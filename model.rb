class Card
  attr_reader :definition, :term

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
