class Checkout < ActiveRecord::Base
  belongs_to :drive

  validates :borrower, presence: true
  validates :date, presence: true
  validates :status, presence: true

  def person
    if status == 'Returned'
      returner
    else
      borrower
    end
  end

  def returned?
    status == 'Returned'
  end
end
