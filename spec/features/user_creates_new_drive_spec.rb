require 'rails_helper'

feature 'user creates new drive' do
  scenario 'with valid data' do
    visit drives_path
    click_on('New Drive')
    fill_in 'Brand',  with: 'brand'
    fill_in 'Serial',  with: 'serial number'
    select 'linux', from: 'drive_file_system'
    fill_in 'drive_capacity',  with: '2.5'
    fill_in 'Location',  with: 'Server Room'
    select 'in', from: 'drive_check_out_status'
    fill_in 'Number',  with: 'drive_number'
    select 'smoke', from: 'drive_category'
    check('drive_redundancy')
    click_on('Create Drive')

    expect(page).to have_content('Server Room')
    expect(page).to have_content('drive_number')
    expect(page).to have_content('Smoke')
    expect(page).to have_content('true')
  end

  scenario 'with invalid data' do
    visit drives_path
    click_on('New Drive')
    fill_in 'Number', with: ''
    click_on('Create Drive')

    expect(page).to have_content("can't be blank")
  end
end
