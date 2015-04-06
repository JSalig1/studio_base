require 'rails_helper'

feature 'user views an individual project' do
  scenario 'they can edit the project details' do
    project = create(:project)
    visit project_path(project)

    click_link('Edit')
    fill_in 'Job Number', with: 'new job number'
    click_on('Update Project')

    expect(page).to have_content('new job number')
  end
end
