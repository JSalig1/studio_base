require 'rails_helper'

feature 'user manages project to archive relations' do
  scenario 'user adds archive to project record' do
    archive = create(:archive, archive_number: 'archive_number')
    project = create(:project, project_number: 'project_number')

    visit project_path(project)
    click_on('Add to Archive')
    select 'archive_number', from: 'project_archive_archive_id'
    click_on('Add to Archive')
    visit project_path(project)

    expect(page).to have_content('archive_number')
    click_on('archive_number')
    expect(page).to have_content('project_number')
  end

end
