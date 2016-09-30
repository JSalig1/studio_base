require 'rails_helper'

feature 'user visits drive print page' do

  before do
    sign_in_adauth
  end

  scenario 'sucessfully' do
    drive = create(:drive)
    visit drive_path(drive)

    click_on('print')

    expect(page).to have_content('1stAveMachine')
  end

end
