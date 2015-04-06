require 'rails_helper'

feature 'user can see what drives a project is archived to' do
  scenario 'they can see the drives listed on the project show page' do
    project = create(:project)
    drive = create(:drive)
    project.drives << drive
    
    visit project_path(project)
    
    expect(page).to have_content('drive_number')
  end
end
