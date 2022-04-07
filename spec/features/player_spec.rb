feature 'Enter player names' do
  scenario 'Check player names can be entered' do
    sign_in_and_play
    expect(page).to have_content "player 1: David\nplayer 2: Michael"
  end
end

feature 'See player hit points' do
  scenario 'See hit points of player 2' do
    sign_in_and_play
    expect(page).to have_content "Michael HP: 10"
  end
end