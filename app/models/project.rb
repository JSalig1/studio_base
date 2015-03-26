class Project < ActiveRecord::Base
  validates :project_number, presence: true
end
