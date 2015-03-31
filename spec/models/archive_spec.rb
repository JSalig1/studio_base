require 'rails_helper'

RSpec.describe Archive, type: :model do
  subject { build(:archive) }

  describe 'validations' do
    it { should validate_presence_of(:archive_number) }
    it { should validate_uniqueness_of(:archive_number) }
  end
end
