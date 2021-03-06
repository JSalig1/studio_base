require 'rails_helper'

feature 'user destroys a drive' do

  before do
    sign_in_adauth
  end

  scenario 'successfully' do
    drive = create(:drive)
    visit drive_path(drive)

    click_link('Delete Drive')

    expect(page).to have_content('Drive deleted')
  end

  scenario 'with exisitng checkouts' do
    drive = create(:drive)
    checkout = create(:checkout)
    drive.checkouts << checkout

    expect { drive.destroy }.to change { Checkout.count }
  end

end
