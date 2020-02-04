feature 'Enter names' do
    scenario 'submitting names' do
      visit('/')
      fill_in :player_1_name, with: 'Mrtl'
      fill_in :player_2_name, with: 'Bari'
      click_button 'Submit'
      expect(page).to have_content 'Mrtl vs. Bari'
    end
    end