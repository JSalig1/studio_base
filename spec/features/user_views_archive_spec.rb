require 'rails_helper'

feature 'user edits archive details' do
  scenario 'with valid data' do
    archive = create(:archive)
    visit archive_path(archive)

    click_link('Edit')
    fill_in 'archive_notes', with: 'New notes'
    click_on('Update Archive')

    expect(page).to have_content('New notes')
  end

  scenario 'with invalid data' do
    archive = create(:archive)
    visit archive_path(archive)

    click_link('Edit')
    fill_in 'archive_size', with: nil
    click_on('Update Archive')

    expect(page).to have_content("Size can't be blank")
  end
end
