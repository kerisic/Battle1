feature 'Attack player 2' do
  scenario 'attack player 2 and see confirmation' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Chrissy attacked Hannah'
  end
end
