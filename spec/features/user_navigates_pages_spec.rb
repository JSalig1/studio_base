require 'rails_helper'

feature 'pagination' do
  scenario 'present for projects' do
    paginate_projects

    visit projects_path

    expect(page).to have_selector('div.pagination')
  end

  private

  def paginate_projects
    (1..2).map { create :project }
    allow(Project).to receive(:paginate).and_return(
      Project.paginate(page: 1, per_page: 1)
    )
  end
end
