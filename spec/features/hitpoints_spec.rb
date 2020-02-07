require "spec_helper"

feature "View hit points" do
  scenario "see player 2 hitpoints" do
    sign_in_and_play
    expect(page).to have_content "Josh points: 100"
  end

  scenario "see player 1 hitpoints" do
    sign_in_and_play
    expect(page).to have_content "Mrtl points: 100"
  end
end
