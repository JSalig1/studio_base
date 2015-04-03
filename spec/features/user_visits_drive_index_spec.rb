require 'rails_helper'

feature 'user visits drive index where' do
  scenario 'they can see all the drive listed' do
    create(:drive, number: 'a_drive_number')
    create(:drive, number: 'another_drive_number')
    visit drives_path

    expect(page).to have_content('a_drive_number')
    expect(page).to have_content('another_drive_number')
  end

  scenario 'they can view individual drives' do
    create(:drive)
    visit drives_path

    click_link('drive_number')

    expect(page).to have_content('drive_number')
  end
end
