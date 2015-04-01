require 'rails_helper'

feature 'user creates new archive' do
  scenario 'with valid data' do
    visit archives_path
    click_on('New Archive')
    fill_in 'Archive Number',  with: 'archive_number'
    click_on('Create Archive')

    expect(page).to have_content('archive_number')
  end

  scenario 'with invalid data' do
    visit projects_path
    click_on('New Archive')
    fill_in 'Archive Number', with: ''
    click_on('Create Archive')

    expect(page).to have_content("can't be blank")
  end
end
