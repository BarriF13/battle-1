feature "Enter names" do
  scenario "submitting names" do
    sign_in_and_play
    expect(page).to have_content "Mrtl vs. Hay"
  end
end

feature "Player1 can see Player2 Hit Points" do
  scenario "can display hit points" do
    sign_in_and_play
    expect(page).to have_content "Hay: 60HP"
  end
end

feature "attack button" do
  scenario "can attack and receive confirmation" do
    sign_in_and_play
    click_link("Attack!")
    expect(page).to have_content("Mrtl attacked Hay !")
  end
end
