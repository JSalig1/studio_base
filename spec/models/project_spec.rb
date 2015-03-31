require 'rails_helper'

RSpec.describe Project, type: :model do
  subject { build(:project) }

  describe 'validations' do
    it { should validate_presence_of(:project_number) }
    it { should validate_uniqueness_of(:project_number) }
  end
end
