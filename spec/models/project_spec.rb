require 'rails_helper'

RSpec.describe Project, type: :model do
  subject { create(:project) }

  it { should define_enum_for(:status)
    .with([:in_progress, :completed])}

  describe 'validations' do
    it { should validate_presence_of(:job_number) }
    it { should validate_uniqueness_of(:job_number) }
    it { should validate_presence_of(:name) }
  end

  describe 'relationships' do
    it 'should destroy associated archive relationships' do
      project = create(:project)
      project.archives.create(attributes_for(:archive))

      expect { project.destroy }.to change {Archive.count}
    end
  end
end
