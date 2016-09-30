require 'rails_helper'

RSpec.describe Checkout, type: :model do

  describe 'validations' do
    it { should validate_presence_of(:borrower) }
    it { should validate_presence_of(:date) }
    it { should validate_presence_of(:status) }
  end

end
