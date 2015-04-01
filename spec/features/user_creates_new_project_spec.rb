require 'rails_helper'

feature 'user creates new project' do
  scenario 'with valid data' do
    visit projects_path
    click_on('New Project')
    fill_in 'Project Number',  with: 'project_number'
    click_on('Create Project')

    expect(page).to have_content('project_number')
  end

  scenario 'with invalid data' do
    visit projects_path
    click_on('New Project')
    fill_in 'Project Number', with: ''
    click_on('Create Project')

    expect(page).to have_content("can't be blank")
  end
end
