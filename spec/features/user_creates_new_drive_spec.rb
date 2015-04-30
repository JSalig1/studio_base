require 'rails_helper'

feature 'user creates new drive' do
  scenario 'with valid data' do
    visit drives_path
    click_on('New Drive')
    fill_in 'Drive Number',  with: 'drive_number'
    select 'smoke', from: 'drive_category'
    check('drive_redundancy')
    click_on('Create Drive')

    expect(page).to have_content('drive_number')
    expect(page).to have_content('smoke')
    expect(page).to have_content('true')
  end

  scenario 'with invalid data' do
    visit drives_path
    click_on('New Drive')
    fill_in 'Drive Number', with: ''
    click_on('Create Drive')

    expect(page).to have_content("can't be blank")
  end
end
