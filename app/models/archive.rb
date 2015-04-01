class Archive < ActiveRecord::Base
  validates :archive_number, presence: true, uniqueness: true
  has_many :projects
end
