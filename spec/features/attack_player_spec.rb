feature 'Attack player 2' do
  scenario 'attack player 2 and see confirmation' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Chrissy attacked Hannah'
  end

  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).not_to have_content 'Hannah: 60HP'
    expect(page).to have_content 'Hannah: 50HP'
  end

  scenario 'attack player 1 and see confirmation' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    click_button 'Attack'
    expect(page).to have_content 'Hannah attacked Chrissy'
  end

  scenario 'attack player 1 which reduces hp by -10' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    click_button 'Attack'
    expect(page).to have_content 'Chrissy: 50HP'
  end
end
