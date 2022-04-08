require_relative '../../lib/player.rb'

feature 'See player hit points' do
  scenario 'See hit points of player 2' do
    sign_in_and_play
    expect(page).to have_content "Michael HP: 100"
  end
end
