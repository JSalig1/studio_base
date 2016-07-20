require 'rails_helper'

feature 'user creates new drive' do
  scenario 'with valid data' do
    visit drives_path
    click_on('New Drive')
    fill_in 'drive_name',  with: 'Name of Drive'
    fill_in 'drive_project',  with: '123_Project'
    fill_in 'drive_brand',  with: 'Hitachi'
    fill_in 'drive_capacity',  with: '2.5'
    fill_in 'drive_location',  with: 'Server Room'
    click_on('Create Drive')

    expect(page).to have_content('Name of Drive')
  end

  scenario 'with invalid data' do
    visit drives_path
    click_on('New Drive')
    fill_in 'drive_name', with: ''
    click_on('Create Drive')

    expect(page).to have_content("can't be blank")
  end
end
