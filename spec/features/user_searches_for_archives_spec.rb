require 'rails_helper'

feature 'user searches for archives' do
  scenario 'unsuccessfully' do 
    visit root_path
    fill_in 'Search Projects', with: 'an unfindable project'
    click_on 'search'

    expect(page).to have_content("No Records Found")
  end

  scenario 'successfully' do
    project = create(:project)
    other_project = create :project, name: 'something else', job_number: 'other'

    visit root_path
    fill_in 'Search Projects', with: 'project_name'
    click_on 'search'

    expect(page).to have_content('Search Results')
    expect(page).to have_content('project_name')
    expect(page).not_to have_content('something else')
  end
end
