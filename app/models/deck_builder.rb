class DeckBuilder
  attr_reader :deck

  def initialize(num_cards)

    @deck = []
    category = {
      nature: 17,
      computers: 18,
      math: 19,
      mythology: 20,
      history: 23
    }
    
    math = TriviaService.new.get_questions(num_cards, category[:math])
    @deck << math["results"].map {|trivia| Card.new(trivia)}

    computer = TriviaService.new.get_questions(num_cards, category[:computer])
    @deck << computer["results"].map {|trivia| Card.new(trivia)}

    nature = TriviaService.new.get_questions(num_cards, category[:nature])
    @deck << nature["results"].map {|trivia| Card.new(trivia)}

    mythology = TriviaService.new.get_questions(num_cards, category[:mythology])
    @deck << mythology["results"].map {|trivia| Card.new(trivia)}

    history = TriviaService.new.get_questions(num_cards, category[:history])
    @deck << history["results"].map {|trivia| Card.new(trivia)}

    @deck.shuffle
  end

end
