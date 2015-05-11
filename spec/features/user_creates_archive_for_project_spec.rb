require 'rails_helper'

feature 'user creates project archive' do
  scenario 'and assigns it to a drive' do
    drive = create(:drive, number: 'drive_number')
    project = create :project

    visit project_path(project)
    click_link('Add Archive')
    select 'drive_number', from: 'archive_drive_id'
    fill_in 'archive_size', with: '3.46'
    fill_in 'archive_notes', with: 'yada yada'
    click_on('Add Archive')

    expect(page).to have_content('drive_number')
    click_on('drive_number')
    expect(page).to have_content('project_name')
    expect(page).to have_content('3.46')
    expect(page).to have_content('yada yada')
  end

end
