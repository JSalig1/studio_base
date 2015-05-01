require 'rails_helper'

feature 'user visits a drive page' do
  scenario 'they can edit the drive details' do
    drive = create(:drive)
    visit drive_path(drive)

    click_link('Edit')
    fill_in 'Number', with: 'new drive number'
    uncheck 'drive_redundancy'
    click_on('Update Drive')

    expect(page).to have_content('new drive number')
    expect(page).to have_content('false')
  end
end
