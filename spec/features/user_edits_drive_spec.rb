require 'rails_helper'

feature 'user edits a drive' do

  before do
    sign_in_adauth
  end

  scenario 'sucessfully' do
    drive = create(:drive)
    visit drive_path(drive)

    click_link('Edit')
    fill_in 'drive_name', with: 'New Drive Name'
    click_on('Update Drive')

    expect(page).to have_content('New Drive Name')
  end

  scenario 'with invalid data' do
    drive = create(:drive)
    visit drive_path(drive)

    click_link('Edit')
    fill_in 'drive_name', with: ''
    click_on('Update Drive')

    expect(page).to have_content("can't be blank")
  end

end
