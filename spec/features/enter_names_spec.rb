feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Chrissy'
    fill_in :player_2_name, with: 'Hannah'
    click_button 'Submit'
    expect(page).to have_content 'Chrissy vs. Hannah'
  end
end
