require 'rails_helper'

feature 'user creates new archive' do
  scenario 'with valid data' do
    visit projects_path
    click_on('New Archive')
    fill_in 'Archive Number',  with: '12345'
    click_on('Create Archive')

    expect(current_path).to eq projects_path
  end

  scenario 'with invalid data' do
    visit projects_path
    click_on('New Archive')
    fill_in 'Archive Number', with: ''
    click_on('Create Archive')

    expect(page).to have_content("can't be blank")
  end
end