require_relative '../../lib/player.rb'

feature 'See player hit confirmation' do
  scenario 'See confirmation that player 2 is hit' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content "Michael is hit!"
  end
end
    
feature 'Reduce hit points after being attacked' do
  scenario 'Reduce HP points of player 2 by 10' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content "Michael HP: 90"
  end
end