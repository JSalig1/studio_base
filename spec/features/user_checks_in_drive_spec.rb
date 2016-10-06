require 'rails_helper'

feature 'user checks in a drive' do

  before do
    sign_in_adauth
  end

  scenario 'successfully' do

    setup

    click_on('Return')

    fill_in 'checkout_returner',  with: "Returner's Name"
    fill_in 'checkout_return_date',  with: Date.today
    click_on('Return')

    expect(page).to have_content('Drive checked in successfully')
    expect(page).to have_content("Returner's Name")
  end

  private

  def setup
    drive = create(:drive)
    checkout = create(:checkout)
    drive.checkouts << checkout
    visit drive_path(drive)
  end

end
