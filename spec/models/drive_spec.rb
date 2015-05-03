require 'rails_helper'

RSpec.describe Drive, type: :model do

  it { should define_enum_for(:category)
    .with([:server, :smoke])}

  it { should respond_to(:category) }
  it { should respond_to(:redundancy) }

  describe 'validations' do
    it { should validate_presence_of(:number) }
    it { should validate_uniqueness_of(:number) }
  end

  describe 'relationships' do
    it 'should destroy associated archive relationships' do
      drive = create(:drive)
      drive.archives.create(attributes_for(:archive))

      expect { drive.destroy }.to change { Archive.count }
    end
  end
end
