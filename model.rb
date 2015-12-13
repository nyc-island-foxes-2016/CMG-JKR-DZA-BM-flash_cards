class Card
  attr_reader :definition, :flashcards
  attr_accessor :term, :correct_count, :incorrect_count, :ratio

  def initialize(word = {})
    @definition = word[:definition]
    @term = word[:term]
    @correct_count = 0
    @incorrect_count = 0
    @ratio = nil
  end

  def correct?(guess)
    if guess == self.term
      self.correct_count += 1
      update_ratio
      true
    else
      self.incorrect_count += 1
      update_ratio
      false
    end
  end

  def update_ratio
    @ratio = @correct_count / (@correct_count + @incorrect_count).to_f
  end

  def to_s
    "Definition: #{self.definition} Term: #{self.term}"
  end

end
