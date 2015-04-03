class Drive < ActiveRecord::Base
  validates :number, presence: true, uniqueness: true
  has_many :project_archives
  has_many :projects, through: :project_archives
end
