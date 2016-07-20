require 'rails_helper'

feature 'user searches for archives' do
  scenario 'unsuccessfully' do 
    visit root_path
    fill_in 'Search Projects', with: 'an unfindable project'
    click_on 'search'

    expect(page).to have_content("No Records Found")
  end

  scenario 'successfully' do
    drive = create(:drive)
    other_drive = create :drive, name: 'something else'

    visit root_path
    fill_in 'Search Projects', with: 'name'
    click_on 'search'

    expect(page).to have_content('Search Results')
    expect(page).to have_content('name')
    expect(page).not_to have_content('something else')
  end
end
