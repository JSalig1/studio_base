require 'rails_helper'

RSpec.describe Drive, type: :model do
  subject { build(:drive) }

  describe 'validations' do
    it { should validate_presence_of(:number) }
    it { should validate_uniqueness_of(:number) }
  end
end
