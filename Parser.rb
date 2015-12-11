module Parser

  def read(file_name)
    flashcards = []
    File.foreach(file_name) do |card|
      flashcards << card.chomp
    end
    flashcards.delete_if{ |file_string| file_string == "" }
  end

end


