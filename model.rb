class Card
  attr_reader :definition, :term

  def initialize(word = {})
    @definition = word[:defintion]
    @term = word[:term]
  end

  def correct?(guess)
    guess == self.term ? true : false
  end



  def to_s

  end

end
