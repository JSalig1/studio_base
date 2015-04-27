require 'rails_helper'

feature 'user creates project archive' do
  scenario 'and assigns it to a drive' do
    drive = create(:drive, number: 'drive_number')
    project = create :project

    visit project_path(project)
    click_link('Add Archive')
    select 'drive_number', from: 'archive_drive_id'
    click_on('Add Archive')
    visit project_path(project)

    expect(page).to have_content('drive_number')
    click_on('drive_number')
    expect(page).to have_content('project_name')
  end

end
