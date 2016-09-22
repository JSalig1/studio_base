require 'rails_helper'

feature 'user visits drive print page' do

  before do
    sign_in_adauth
  end

  scenario 'sucessfully' do
    drive = create(:drive)
    visit drive_path(drive)

    click_on('Print Label')

    expect(page).to have_content('1stavemachine')
  end

end
