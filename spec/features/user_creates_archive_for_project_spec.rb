require 'rails_helper'

feature 'user creates project archive' do
  scenario 'and assigns it to a drive' do
    drive = create(:drive, number: 'drive_number')
    project = create(:project, project_number: 'project_number')

    visit project_path(project)
    click_on('Add Archive')
    select 'drive_number', from: 'archive_drive_id'
    click_on('Add Archive')
    visit project_path(project)

    expect(page).to have_content('drive_number')
    click_on('drive_number')
    expect(page).to have_content('project_number')
  end

end
