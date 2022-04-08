feature 'switching the player' do
    scenario'when player1 hit player 2, player2 will be able to hit player 1' do
        sign_in_and_play
        click_button 'Attack!'
        click_button 'Ok'
        expect(page).to have content "Michael attacks David"
    end
end