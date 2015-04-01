require 'rails_helper'

feature 'user visits archive index' do
  scenario 'they can see all the projects listed' do
    create(:archive, archive_number: 'an_archive_number')
    create(:archive, archive_number: 'another_archive_number')
    visit archives_path

    expect(page).to have_content('an_archive_number')
    expect(page).to have_content('another_archive_number')
  end

  scenario 'they can view individual archives' do
    create(:archive, archive_number: 'archive_number')
    visit archives_path

    click_link('archive_number')

    expect(page).to have_content('archive_number')
  end
end
