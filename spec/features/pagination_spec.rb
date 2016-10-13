require 'rails_helper'

feature 'pagination' do
  scenario 'present for drives' do
    paginate_drives
    (1..2).map { create :drive }

    visit drives_path

    expect(page).to have_selector('div.pagination')
  end

  scenario 'present for checkouts' do
    drive = create :drive
    checkouts = (1..7).map { create :checkout }
    drive.checkouts << checkouts

    visit drive_path(drive)

    expect(page).to have_selector('div.pagination')
  end

  private

  def paginate_drives
    allow(Drive).to receive(:paginate).and_return(
      Drive.paginate(page: 1, per_page: 1)
    )
  end

end
