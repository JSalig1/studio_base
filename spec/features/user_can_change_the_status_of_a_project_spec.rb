require 'rails_helper'

feature 'user can edit the status of a project' do
  scenario 'to complete' do
    project = create(:project, status: Project.statuses[:in_progress])

    visit project_path(project)
    click_link 'Edit'
    select 'completed', from: 'project_status'
    click_on 'Update Project'

    expect(page).to have_content('completed ')
  end
end
