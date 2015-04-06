require 'rails_helper'

feature 'user can see what projects are in a drive' do
  scenario 'they can see the projects listed on the drive show page' do
    project = create(:project)
    drive = create(:drive)
    drive.projects << project
    
    visit drive_path(drive)
    
    expect(page).to have_content('project_number')
  end
end
