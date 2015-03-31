require 'rails_helper'

feature 'user visits projects index' do
  scenario 'they can see all the projects listed' do
    create(:project, project_number: '1234')
    create(:project, project_number: '5678')
    visit projects_path

    expect(page).to have_content('1234')
    expect(page).to have_content('5678')
  end

  scenario 'they can view individual projects' do
    create(:project, project_number: '1111')
    visit projects_path

    click_link('1111')

    expect(page).to have_content('1111')
  end
end
