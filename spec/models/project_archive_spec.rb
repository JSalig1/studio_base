require 'rails_helper'

RSpec.describe ProjectArchive, type: :model do

  describe 'validations' do
    it { should validate_presence_of(:drive_id) }
    it { should validate_presence_of(:project_id) }
    it { should validate_uniqueness_of(:project_id).scoped_to(:drive_id) }
  end
end
