require 'rails_helper'

feature 'user searches drives' do

  scenario 'unsuccessfully' do 
    visit root_path
    fill_in 'Search', with: 'an unfindable project'
    click_on 'search'

    expect(page).to have_content("No Records Found")
  end

  scenario 'successfully' do
    drive = create :drive, name: 'Searched for Drive'
    other_drive = create :drive, name: 'Something Else'

    visit root_path
    fill_in 'Search', with: 'Searched for Drive'
    click_on 'search'

    expect(page).to have_content('Search Results')
    expect(page).to have_content('Searched for Drive')
    expect(page).not_to have_content('Something Else')
  end

  scenario 'matching notes field only' do
    create :drive, name: 'Detailed Drive', notes: 'Special Notes'

    visit root_path
    fill_in 'Search', with: 'Special Notes'
    click_on 'search'

    expect(page).to have_content('Search Results')
    expect(page).to have_content('Detailed Drive')
  end

end
