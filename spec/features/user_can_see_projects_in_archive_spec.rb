require 'rails_helper'

feature 'user can see what projects are in an archive' do
  scenario 'they can see the projects listed on the archive show page' do
    project = create(:project)
    archive = create(:archive)
    archive.projects << project
    
    visit archive_path(archive)
    
    expect(page).to have_content('project_number')
  end
end