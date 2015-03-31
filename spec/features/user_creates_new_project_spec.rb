require 'rails_helper'

feature 'user creates new project' do
  scenario 'with valid data' do
    visit projects_path
    click_on('Log New Project')
    fill_in 'Project Number',  with: '12345'
    click_on('Create Project')

    expect(page).to have_content('12345')
  end

  scenario 'with invalid data' do
    visit projects_path
    click_on('Log New Project')
    fill_in 'Project Number', with: ''
    click_on('Create Project')

    expect(page).to have_content("can't be blank")
  end
end
