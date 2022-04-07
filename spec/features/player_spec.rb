feature 'Enter player names' do
  scenario 'Check player names can be entered' do
  visit('/')
  fill_in :player_1, with: 'David'
  fill_in :player_2, with: 'Michael'
  click_button 'Submit'
  expect(page).to have_content "player 1: David\nplayer 2: Michael"
  end
end