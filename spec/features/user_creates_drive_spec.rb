require 'rails_helper'

feature 'user creates a drive' do

  scenario 'successfully' do
    visit drives_path

    click_on('New Drive')
    fill_in 'drive_name',  with: 'Drive Name'
    fill_in 'drive_project',  with: 'Project Name'
    fill_in 'drive_capacity',  with: '4'
    click_on('Create Drive')

    expect(page).to have_content('Drive Name')
  end

  scenario 'with invalid data' do
    visit drives_path

    click_on('New Drive')
    fill_in 'drive_name', with: ''
    click_on('Create Drive')

    expect(page).to have_content("can't be blank")
  end

end
