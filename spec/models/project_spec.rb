require 'rails_helper'

RSpec.describe Project, type: :model do
  subject { FactoryGirl.create(:project) }

  describe 'validations' do
    it { should validate_presence_of(:project_number) }
  end
end
