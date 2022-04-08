require_relative '../../lib/player.rb'

describe Player do

  it 'should return name' do
    player = Player.new("Michael")
    expect(player.name).to eq("Michael")
  end

  feature 'Enter player names' do
    scenario 'Check player names can be entered' do
      # click_button 'Submit'
      sign_in_and_play #save_and_open_page
      expect(page).to have_content "player 1: David\nplayer 2: Michael"
    end
  end
end