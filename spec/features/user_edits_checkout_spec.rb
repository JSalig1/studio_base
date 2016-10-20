require 'rails_helper'

feature 'user edits a checkout' do

  before do
    sign_in_adauth
  end

  scenario 'sucessfully' do

    setup

    fill_in 'checkout_borrower', with: 'other person'
    click_on('Update Checkout')

    expect(page).to have_content('other person')
  end

  scenario 'with invalid data' do

    setup

    fill_in 'checkout_borrower', with: ''
    click_on('Update Checkout')

    expect(page).to have_content("can't be blank")
  end

  private

  def setup
    drive = create(:drive)
    checkout = create(:checkout)
    drive.checkouts << checkout
    visit drive_path(drive)

    click_on('borrower name')
    click_on('Edit')
  end

end
