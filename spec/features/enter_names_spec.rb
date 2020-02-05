feature 'Enter names' do
    scenario 'submitting names' do
      visit('/')
      fill_in :player_1_name, with: 'Mrtl'
      fill_in :player_2_name, with: 'Hay'
      click_button 'Submit'
      expect(page).to have_content 'Mrtl vs. Hay'
    end
    end