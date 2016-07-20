require 'rails_helper'

feature 'user views drive index' do
  scenario 'they can see all the drives listed' do
    create(:drive, name: 'Drive One')
    create(:drive, name: 'Drive Two')
    visit drives_path

    expect(page).to have_content('Drive One')
    expect(page).to have_content('Drive Two')
  end

  scenario 'they can view individual drives' do
    create(:drive)
    visit drives_path

    click_link('name')

    expect(page).to have_content('name')
  end
end
