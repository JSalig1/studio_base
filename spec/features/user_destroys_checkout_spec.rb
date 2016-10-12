require 'rails_helper'

feature 'user destroys a checkout' do

  before do
    sign_in_adauth
  end

  scenario 'successfully' do
    drive = create(:drive)
    checkout = create(:checkout)
    drive.checkouts << checkout
    visit checkout_path(checkout)

    click_link('Delete Checkout')

    expect(page).to have_content('Checkout deleted')
  end

end
