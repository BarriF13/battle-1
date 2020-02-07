# require "switch"

feature "Switch turns" do
  context "seeing the current turn" do
    scenario "at the start of the game" do
      sign_in_and_play
      expect(page).to have_content "Mrtl's turn"
    end

    scenario "after player 1 attacks" do
      sign_in_and_play
      click_link "Attack!"
      expect(page).not_to have_content "Mrtl's turn"
      expect(page).to have_content "Josh's turn"
    end

    scenario "be attacked by player 2" do
      sign_in_and_play
      click_link "Attack!"
      click_button "ok"
      click_link "Attack!"
      expect(page).to have_content "Josh attacked Mrtl"
    end

    scenario "reduce player 2 hp by 10" do
      sign_in_and_play
      click_link "Attack!"
      click_button "ok"
      expect(page).not_to have_content "Josh points: 100"
      expect(page).to have_content "Josh points: 90"
    end

    scenario "reduce player 1 hp by 10" do
      sign_in_and_play
      click_link "Attack!"
      click_button "ok"
      click_link "Attack!"
      click_button "ok"
      expect(page).not_to have_content "Mrtl points: 100"
      expect(page).to have_content "Mrtl points: 90"
    end
  end
end
