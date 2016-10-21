require 'rails_helper'

feature 'user signs in' do

  scenario 'successfully' do
    visit signin_path

    fill_in 'username', with: ENV['AD_LOGIN']
    fill_in 'password', with: ENV['AD_PASS']
    click_on('Login')

    expect(page).to have_content('Welcome')
  end

  scenario 'with invalid login' do
    visit signin_path

    fill_in 'username', with: 'not a user'
    fill_in 'password', with: 'password'
    click_on('Login')

    expect(page).to have_content('Invalid Login')
    expect(page).to have_content('Username:')
  end

  scenario 'because they were redirected' do
    visit new_drive_path

    expect(page).to have_content('Please Login')
  end
end


