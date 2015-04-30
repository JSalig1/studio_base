require 'rails_helper'

feature 'user creates new project' do
  scenario 'with valid data' do
    visit projects_path
    click_on('New Project')
    fill_in 'Job Number',  with: 'job_number'
    fill_in 'Project Name', with: 'name'
    fill_in 'Booking Date', with: Time.now
    fill_in 'Start Date', with: Time.now
    select 'completed', from: 'project_status'
    click_on('Create Project')

    expect(page).to have_content('name')
    expect(page).to have_content('completed')
  end

  scenario 'with invalid data' do
    visit projects_path
    click_on('New Project')
    fill_in 'Job Number', with: ''
    click_on('Create Project')

    expect(page).to have_content("can't be blank")
  end
end
