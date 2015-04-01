require 'rails_helper'

feature 'user visits an individual project' do
  scenario 'they can edit the project details' do
    project = create(:project)
    visit project_path(project)

    click_link('Edit')
    fill_in 'Project Number',  with: 'new project number'
    click_on('Update Project')

    expect(page).to have_content('new project number')
  end
end
