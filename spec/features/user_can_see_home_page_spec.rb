require 'rails_helper'

RSpec.describe "User visits the home page" do
  it "sees the welcome page" do
    visit "/"
    expect(page).to have_content("Welcome to Trivia Night!")
    expect(page).to have_content("Play")
    expect(page).to have_content("Instructions")
  end
end
