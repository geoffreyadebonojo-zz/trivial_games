class TriviaService
  def get_questions(num, category)
    response = HTTParty.get("https://opentdb.com/api.php?amount=#{num}&category=#{category}")
  end
end
