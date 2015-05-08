require 'rails_helper'

feature 'user visits and archive page' do
  scenario 'successfully' do
    drive = create(:drive)
    drive.projects.create(attributes_for(:project))

    visit drive_path(drive)
    click_on 'project_name'

    expect(page).to have_content('Archived on:')
  end
end
