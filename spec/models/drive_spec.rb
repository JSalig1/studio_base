require 'rails_helper'

RSpec.describe Drive, type: :model do

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:project) }
    it { should validate_presence_of(:capacity) }
  end

end
