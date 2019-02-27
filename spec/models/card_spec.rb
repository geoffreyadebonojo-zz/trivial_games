require 'rails_helper'

RSpec.describe "Card" do
  it "has attributes" do

    trivia = {"category"=>"Entertainment: Video Games",
              "type"=>"multiple",
              "difficulty"=>"hard",
              "question"=>"Which car did not appear in the 2002 Lego Game: Drome Racers?",
              "correct_answer"=>"Wasp",
              "incorrect_answers"=>["Raptor", "Hornet", "Behemoth"]}

    card = Card.new(trivia)
    expect(card.question).to eq("Which car did not appear in the 2002 Lego Game: Drome Racers?")
    expect(card.correct_answer).to eq("Wasp")
    expect(card.all_answers).to eq(["Wasp", "Raptor", "Hornet", "Behemoth"])
    expect(card.difficulty).to eq("hard")
  end

  it "numeric_difficulty" do
    easy_trivia = {"category"=>"Entertainment: General",
              "type"=>"multiple",
              "difficulty"=>"easy",
              "question"=>"Which question is easier?",
              "correct_answer"=>"This",
              "incorrect_answers"=>["Other one", "The one before", "Last"]}

    easy_card = Card.new(easy_trivia)
    expect(easy_card.numeric_difficulty).to eq(1)

    medium_trivia =  {"category"=>"Entertainment: General",
              "type"=>"multiple",
              "difficulty"=>"medium",
              "question"=>"Which question is easier?",
              "correct_answer"=>"This",
              "incorrect_answers"=>["Other one", "The one before", "Last"]}

    medium_card = Card.new(medium_trivia)
    expect(medium_card.numeric_difficulty).to eq(3)

    hard_trivia =  {"category"=>"Entertainment: General",
              "type"=>"multiple",
              "difficulty"=>"hard",
              "question"=>"Which question is easier?",
              "correct_answer"=>"This",
              "incorrect_answers"=>["Other one", "The one before", "Last"]}

    hard_card = Card.new(hard_trivia)
    expect(hard_card.numeric_difficulty).to eq(5)

  end
end
