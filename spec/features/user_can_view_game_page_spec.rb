require 'rails_helper'

RSpec.describe "User visits the game page" do
  it "sees " do
    visit "/game"
    save_and_open_page

  end
end
