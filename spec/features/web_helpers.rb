def sign_in_and_play
  visit("/")
  fill_in :player_1_name, with: "Mrtl"
  fill_in :player_2_name, with: "Hay"
  click_button "Submit"
end
