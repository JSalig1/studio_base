require 'rails_helper'

feature 'user manages project to archive relations' do
  scenario 'user adds archive to project record' do
    archive = create(:archive, archive_number: 'archive_number')
    project = create(:project, project_number: 'project_number')

    visit project_path(project)
    click_on('Edit')
    select 'archive_number', from: 'project_archive_id'
    click_on('Add to Archive')

    expect(page).to have_content('project_number')
  end
end
