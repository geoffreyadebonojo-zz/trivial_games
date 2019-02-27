require 'rails_helper'

RSpec.describe "User visits the game page" do
  it "sees the game page" do
    visit "/"

    click_on "Play"
    expect(current_path).to eq(game_path)

  end
end
