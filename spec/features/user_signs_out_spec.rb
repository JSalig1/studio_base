require 'rails_helper'

feature 'user signs out' do

  before do
    sign_in_adauth
  end

  scenario 'successfully' do
    visit root_path
    expect(page).to have_content('Sign out')

    click_on('Sign out')
    expect(page).to have_content('Sign in')
  end

end
