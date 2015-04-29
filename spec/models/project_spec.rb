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
end
