class Card
  attr_reader :question, :correct_answer, :all_answers, :difficulty
  def initialize(trivia)
    @question = trivia["question"]
    @correct_answer = trivia["correct_answer"]
    @all_answers = [@correct_answer] + trivia["incorrect_answers"]
    @difficulty = trivia["difficulty"]
    @type = trivia["type"]
  end

  def numeric_difficulty
    case @difficulty
    when "easy"
      1
    when "medium"
      3
    when "hard"
      5
    end
  end
end
