class Drive < ActiveRecord::Base
  validates :name, presence: true
  validates :project, presence: true
  validates :capacity, presence: true

end
