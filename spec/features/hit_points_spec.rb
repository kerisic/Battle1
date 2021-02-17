feature 'View hit points' do
  scenario "see Player 2's hit points" do
    visit('/')
    fill_in :player_1_name, with: 'Chrissy'
    fill_in :player_2_name, with: 'Hannah'
    click_button 'Submit'
    expect(page).to have_content 'Hannah: 60HP'
  end
end
