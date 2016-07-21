require 'rails_helper'

feature 'user visits root' do

  scenario 'successfully' do
    visit root_path

    expect(page).to have_http_status(:success)
  end

end
