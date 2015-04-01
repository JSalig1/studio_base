require 'rails_helper'

feature 'user visits projects index' do
  scenario 'they can see all the projects listed' do
    create(:project, project_number: 'a_project_number')
    create(:project, project_number: 'another_project_number')
    visit projects_path

    expect(page).to have_content('a_project_number')
    expect(page).to have_content('another_project_number')
  end

  scenario 'they can view individual projects' do
    create(:project)
    visit projects_path

    click_link('project_number')

    expect(page).to have_content('project_number')
  end
end
