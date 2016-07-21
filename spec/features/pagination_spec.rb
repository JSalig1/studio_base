require 'rails_helper'

feature 'pagination' do
  scenario 'present for drives' do
    paginate_drives

    visit drives_path

    expect(page).to have_selector('div.pagination')
  end

  private

  def paginate_drives
    (1..2).map { create :drive }
    allow(Drive).to receive(:paginate).and_return(
      Drive.paginate(page: 1, per_page: 1)
    )
  end
end
