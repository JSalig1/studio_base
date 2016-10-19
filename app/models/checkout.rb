class Checkout < ActiveRecord::Base
  belongs_to :drive

  validates :borrower, presence: true
  validates :borrow_date, presence: true
  validates :status, presence: true

  def person
    returned? ? returner : borrower
  end

  def date
    returned? ? formatted_return_date : formatted_borrow_date
  end

  def returned?
    status == 'Returned'
  end

  def formatted_borrow_date
    self[:borrow_date].strftime(date_time_format)
  end

  def formatted_return_date
    self[:return_date].strftime(date_time_format)
  end

  private

  def date_time_format
    "%a %b %e, %Y, %l:%M%P"
  end
end
