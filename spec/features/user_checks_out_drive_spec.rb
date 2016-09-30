require 'rails_helper'

feature 'user checks out a drive' do

  before do
    sign_in_adauth
  end

  scenario 'successfully' do
    drive = create(:drive)
    visit drive_path(drive)

    click_on('New')
    fill_in 'checkout_borrower',  with: "Person's Name"
    fill_in 'checkout_purpose',  with: 'Why they checked out the drive'
    fill_in 'checkout_date',  with: Date.today
    click_on('Checkout')

    expect(page).to have_content('Drive checked out successfully')
    expect(page).to have_content("Person's Name")
  end

  scenario 'with invalid data' do
    drive = create(:drive)
    visit drive_path(drive)

    click_on('New')
    fill_in 'checkout_borrower',  with: ''
    fill_in 'checkout_date',  with: Date.today
    click_on('Checkout')

    expect(page).to have_content("can't be blank")
  end

end
