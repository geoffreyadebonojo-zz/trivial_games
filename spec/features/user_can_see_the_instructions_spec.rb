require "rails_helper"

RSpec.describe "User visits the instructions page" do
  it "sees the instructions page" do
    visit "/"

    click_on "Instructions"

    expect(page).to have_content("How to Play")

    click_on "Home"

    expect(current_path).to eq("/")
  end
end
