class Drive < ActiveRecord::Base
  validates :name, presence: true
  validates :project, presence: true
  validates :capacity, presence: true

  def long_name
    "#{brand.capitalize} drive for #{project}"
  end
end
