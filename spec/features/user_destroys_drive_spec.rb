require 'rails_helper'

feature 'user destroys a drive' do

  scenario 'successfully' do
    drive = create(:drive)
    visit drive_path(drive)

    click_link('Delete Drive')

    expect(page).to have_content('Drive deleted')
  end

end
