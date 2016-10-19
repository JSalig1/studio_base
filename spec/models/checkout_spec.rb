require 'rails_helper'
require 'date'

RSpec.describe Checkout, type: :model do

  subject { Checkout.new(borrower: "Name", status: "Checked Out", borrow_date: DateTime.now) }

  describe 'validations' do
    it { should validate_presence_of(:borrower) }
    it { should validate_presence_of(:borrow_date) }
    it { should validate_presence_of(:status) }
  end

end
