require 'rails_helper'

feature 'user creates new drive' do
  scenario 'with valid data' do
    visit drives_path
    click_on('New Drive')
    fill_in 'Drive Number',  with: 'drive_number'
    click_on('Create Drive')

    expect(page).to have_content('drive_number')
  end

  scenario 'with invalid data' do
    visit drives_path
    click_on('New Drive')
    fill_in 'Drive Number', with: ''
    click_on('Create Drive')

    expect(page).to have_content("can't be blank")
  end
end
