class Project < ActiveRecord::Base
  validates :project_number, presence: true, uniqueness: true
  belongs_to :archive
end
