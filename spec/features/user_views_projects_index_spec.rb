require 'rails_helper'

feature 'user views project index' do
  scenario 'they can see all projects listed' do
    create(:project, job_number: 'a_project_number')
    create(:project, job_number: 'another_project_number')
    visit projects_path

    expect(page).to have_content('a_project_number')
    expect(page).to have_content('another_project_number')
  end

  scenario 'they can view individual projects' do
    create(:project)
    visit projects_path

    click_link('project_name')

    expect(page).to have_content('project_number')
  end
end
