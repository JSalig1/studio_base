class Checkout < ActiveRecord::Base
  belongs_to :drive

  validates :borrower, presence: true
  validates :date, presence: true
  validates :status, presence: true
end
