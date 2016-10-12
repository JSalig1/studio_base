require 'rails_helper'

feature 'user edits a checkout' do

  before do
    sign_in_adauth
  end

  scenario 'sucessfully' do

    setup

    click_on('borrower name')
    click_on('Edit')
    fill_in 'checkout_borrower', with: 'other person'
    click_on('Update Checkout')

    expect(page).to have_content('other person')
  end

  scenario 'with invalid data' do

  end

  private

  def setup
    drive = create(:drive)
    checkout = create(:checkout)
    drive.checkouts << checkout
    visit drive_path(drive)
  end

end
